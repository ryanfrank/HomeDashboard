<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Start extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
    function __construct() {
        parent::__construct();
    }
	public function index()
	{
        if ( !$this->ion_auth->logged_in() ){
            $data = ['loginRequired' => true, 'isLoggedIn' => false];
            $this->load->view('Start/start_page', $data);
        }
        else {
            $data = ['loginRequired' => false, 'isLoggedIn' => true];
            $this->load->view('Main/dashboard_home', $data);
        }
	}
}