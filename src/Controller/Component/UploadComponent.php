<?php
namespace App\Controller\Conponent;

use Cake\Controller\Component;
use cake\Controller\ComponentRegistry;
use Cake\Network\Exception\InternalErrorException;
use Cake\Utility\Text;
use Cake\ORM\TableRegistry;

class UploadComponent extends Component
{
	
   public $max_files = 3;

   public function send($data)
   {

   	if (!empty($data)) {
   		if (count($data) > $this->max_files) {
   			throw new InternalErrorException("Error Processing Request, Max number files accecpt is {$this->max_files}", 1);
   			
   		}
   		foreach ($data as $file) {
   			$filename = $file['name'];
   			$file_tmp_nome = $file['tmp_name']; 
   			$dir = WWW_ROOT. 'files'.DS.'uploads';
   			$allowed = array('pdf', 'text');
   			if (!in_array(substr(strchr($filename,'.'), 1), $allowed)) {
   				throw new InternalErrorException("Error Processing Request", 1);
   				
   			}elseif (is_uploaded_file($file_tmp_nome)) {
               //$filename = Text::uuid().'.'.$filename;

               //$files = TableRegistry::get('Comprovante');
               //$entity = $files->newEntity();
               //$entity->filename = $filename;
               //$files = save($entity);

   				move_uploaded_file($file_tmp_nome, $dir.DS.Text::uuid().'.'.$filename);
   			}
   		 }
   	  }
   }
}







?>