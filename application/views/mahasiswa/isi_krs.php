<link href="<?php echo base_url();?>asset/css/table.css" rel="stylesheet" />


<?php if($this->session->flashdata('error','kelebihan')){ ?>
<script type="text/javascript">
	alert("Matakuliah yang anda pilih melebihi " + "<?php echo $this->session->userdata('sks_asal'); ?>")	
</script>
<?php
}
?>
<form align="left" style="font-size:120%; margin-top:30px;" action="<?php echo base_url().'index.php/mahasiswa/isikrs/isi/'?>" method="POST" accept-charset="utf-8">
                    
                        Nama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $this->session->userdata('nama') ; ?><br>
                        <hr style="border-top:1px solid #000000" width="70%" align="left">
                        NIM &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $this->session->userdata('noink') ; ?><br>
                        <hr style="border-top:1px solid #000000" width="70%" align="left">
                        SKS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $this->session->userdata('sks_asal') ; ?><br>
                        <hr style="border-top:1px solid #000000" width="70%" align="left"><br>
                   
<table class="table-fill">
	<thead>
		<tr>
			<th class="text-left"></th>
			<th class="text-left">NO</th>
			<th class="text-left">KODE</th>
			<th class="text-left">MATAKULIAH</th>
			<th class="text-left">SEMESTER</th>
			<th class="text-left">SKS</th>
		</tr>
	</thead>

	<tbody class="table-hover">
		<tr>
		
			<?php
			$no = 1;
			foreach ($data->result() as $row) {
			?>
				<td class="text-left"><input type ='checkbox' name = 'cek[]' value = '<?php echo $row->id; ?>'></td>
				<td class="text-left"><?php echo $no++; ?></td>
				<td class="text-left"><?php echo $row->kode; ?></td>
				<td class="text-left"><?php echo $row->nama; ?></td>
				<td class="text-left"><?php echo $row->semester; ?></td>
				<td class="text-left"><?php echo $row->sks; ?></td>
		</tr>
			<?php }?>
			
	</tbody>
		
</table>

<div align = "center" style = "margin-top:20px">
<button type = "submit" >Submit</button>
</form>
</div>