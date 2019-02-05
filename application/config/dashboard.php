<?php
/**
 * Name:    Dashboard Config
 * Author:  Ryan Frank
 *          ryan_w_frank@mac.com
 *
 * Created:  02.02.2019
 *
 * Requirements: PHP5.6 or above
 *
 * @package    CodeIgniter-Dashboard
 * @author     Ryan Frank
 * @link       
 * @filesource
 */
defined('BASEPATH') OR exit('No direct script access allowed');

/*
 | -------------------------------------------------------------------------
 | Define automation configuration
 | -------------------------------------------------------------------------
 | Allows to select a specific group for the database connection
 |
 | Default is empty: uses default group defined in CI's configuration
 | (see application/config/database.php, $active_group variable)
 */
$config['automation_type']          = 'OpenHAB'; /* Current options are OpenHAB */
$config['automation_api_type']      = 'rest'; /* Define connection type: REST, SOAP, etc */
$config['automation_port']          = '8080'; /* Port designation for the connection type */
$config['automation_server']        = '192.168.0.71'; /* Server name/ip for API data (can be IP or DNS name) */
$config['automation_api_auth']      = FALSE; /* Is authentication required for API connectivity (true or false) */
$config['automation_api_key']       = ''; /* Key to be added for automation API connection */
$config['automation_api_user']      = ''; /* User to be added for automation API connection */
$config['automation_table']         = 'items'; /* Table that supplies definition of persistent connections */