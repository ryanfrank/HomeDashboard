<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

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
	public function login()
	{
        if ( $this->input->is_ajax_request() ) {
            if ( !$this->ion_auth->logged_in() ){
                if ( $this->input->post('login') ) {
                    $formData = ['login' => $this->input->post('login'),'password' => $this->input->post('password')];
                    $remember = TRUE;
                    if ( $this->ion_auth->login($formData['login'], $formData['password'], $remember) ) {
                        $results = array("status" => "success");
                    } 
                    else {
                        if ( $this->ion_auth->is_max_login_attempts_exceeded($formData['login']) ) {
                            $results = array("status" => "toManyFailed", "message" => "Too many failed login attempts");
                        } 
                        else {
                            $results = array("status" => "failed", "message" => "Failed login, wrong password or invalid user account");
                        }
                    }
                    echo json_encode($results);
                }
            }
        }
    }
    public function logout()
	{
        if ( $this->input->is_ajax_request() ) {
            if ( $this->ion_auth->logout() ) {
                $result = array("status" => "success");
            }
            echo json_encode($result);
        }
	}
}