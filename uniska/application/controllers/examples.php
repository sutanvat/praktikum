<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Examples extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}

	public function _example_output($output = null)
	{
		$this->load->view('example.php',$output);
	}

	public function offices()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}

	public function index()
	{
		$this->_example_output((object)array
('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}

	public function karyawan()
	{
		
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('karyawan');
			$crud->columns('nik','nama','alamat','telpon');
			$output = $crud->render();
			$this->_example_output($output);
			
	}

	public function siswa()
	{
		
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('siswa');
			$crud->columns('nis','nama','jeniskelamin','alamat','telpon');
			$output = $crud->render();
			$this->_example_output($output);
			
	}


	public function dosen()
	{
		
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('dosen');
			$crud->columns('nidn','nama','matkul','alamat','telpon');
			$output = $crud->render();
			$this->_example_output($output);
			
	}

		public function guru()
	{
		
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('guru');
			$crud->columns('nip','nama','jabatan','alamat','telpon');
			$output = $crud->render();
			$this->_example_output($output);
			
	}

		public function praktikum()
	{
		
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('praktikum');
			$crud->columns('id_praktikum','nama_mhs','nama_dosen','Kelas','matkul_praktikum','kehadiran');
			$output = $crud->render();
			$this->_example_output($output);
			
	}
		
			
	
		}
	

