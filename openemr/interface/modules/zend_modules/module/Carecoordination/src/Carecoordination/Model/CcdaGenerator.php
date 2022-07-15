<?php

/**
 * CcdaGenerator.php  is responsible for generating a CCDA document.  It creates the initial xml input data for the
 * ccda node service and then communicates with the ccda node service to get back the generated ccda document.
 *
 * @package openemr
 * @link      http://www.open-emr.org
 * @author    Stephen Nielson <snielson@discoverandchange.com>
 * @copyright Copyright (c) 2022 Discover and Change <snielson@discoverandchange.com>
 * @license   https://github.com/openemr/openemr/blob/master/LICENSE GNU General Public License 3
 */

namespace Carecoordination\Model;

use Carecoordination\Controller\EncountermanagerController;
use DOMDocument;
use OpenEMR\Common\Logging\SystemLogger;
use XSLTProcessor;

class CcdaGenerator
{
    /**
     * @var EncounterccdadispatchTable
     */
    private $dispatchTable;

    /**
     * @var int
     */
    private $createdtime;

    /**
     * @var string
     */
    private $data;

    public function __construct(EncounterccdadispatchTable $table)
    {
        $this->dispatchTable = $table;
    }

    public function getEncounterccdadispatchTable(): EncounterccdadispatchTable
    {
        return $this->dispatchTable;
    }

    /**
     * Generates the CCDA document
     * @param $patient_id
     * @param $encounter_id
     * @param $sent_by
     * @param $send
     * @param $view
     * @param $emr_transfer
     * @param $components
     * @param $sections
     * @param $recipients
     * @param $params
     * @param $document_type
     * @return GeneratedCcdaResult
     * @throws \Exception
     */
    public function generate($patient_id, $encounter_id, $sent_by, $send, $view, $emr_transfer, $components, $sections, $recipients, $params, $document_type): GeneratedCcdaResult
    {

        if ($sent_by != '') {
            $_SESSION['authUserID'] = $sent_by;
        }

        if (!$sections) {
            $components0 = $this->getEncounterccdadispatchTable()->getCCDAComponents(0);
            foreach ($components0 as $key => $value) {
                if ($str ?? '') {
                    $str .= '|';
                } else {
                    $str = $key;
                    continue;
                }
                $str .= $key;
            }
            $sections = $str;
        }

        if (!$components) {
            $components1 = $this->getEncounterccdadispatchTable()->getCCDAComponents(1);
            foreach ($components1 as $key => $value) {
                if ($str1 ?? '') {
                    $str1 .= '|';
                } else {
                    $str1 = $key;
                    continue;
                }
                $str1 .= $key;
            }
            $components = $str1;
        }
        $data = $this->create_data($patient_id, $encounter_id, $sections, $components, $recipients, $params, $document_type, $send);
        $content = $this->socket_get($data);
        $content = trim($content);
        $generatedResult = $this->getEncounterccdadispatchTable()->logCCDA(
            $patient_id,
            $encounter_id,
            base64_encode($content),
            $this->createdtime,
            0,
            $_SESSION['authUserID'],
            $document_type,
            $view,
            $send,
            $emr_transfer
        );
        return $generatedResult;
    }

    public function socket_get($data)
    {
        $serviceRequestor = new CcdaServiceDocumentRequestor();
        $content = $serviceRequestor->socket_get($data);
        return $content;
    }


    public function create_data($pid, $encounter, $sections, $components, $recipients, $params, $document_type, int $send = null)
    {
        $modelGenerator = new CcdaServiceRequestModelGenerator($this->getEncounterccdadispatchTable());
        $modelGenerator->create_data($pid, $encounter, $sections, $components, $recipients, $params, $document_type, $send);
        $this->createdtime = $modelGenerator->getCreatedTime();
        $this->data = $modelGenerator->getData();
        return $this->data;
    }
}
