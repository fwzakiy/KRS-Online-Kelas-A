<link href="<?php echo base_url();?>asset/css/table.css" rel="stylesheet" />				

<div align = "center">
    <table data-scrollreveal="enter left and move 100px, wait 0.5s">
        <thead>
            <tr>
                <th class="text-left">NO</th>
                <th class="text-left">KODE</th>
                <th class="text-left">MATAKULIAH</th>
                <th class="text-left">SEMESTER</th>
                <th class="text-left">SKS</th>
                <th class="text-left">STATUS</th>
                <th class="text-left">AKSI</th>
            </tr>
        </thead>

        <tbody class="table-hover">
            <tr>
            <?php
            $no = 1;
            foreach ($krs->result() as $row) {
            ?>
                
                    <td class="text-left"><?php echo $no++; ?></td>
                    <td class="text-left"><?php echo $row->kode; ?></td>
                    <td class="text-left"><?php echo $row->nama; ?></td>
                    <td class="text-left"><?php echo $row->semester; ?></td>
                    <td class="text-left"><?php echo $row->sks; ?></td>
                    <td class="text-left"><?php if($row->status==null||$row->status==0){echo "belum disetujui";} else{ echo "sudah disetujui";} ?></td>
                    <td class="text-left"><a href = "<?php echo base_url().'index.php/mahasiswa/krs/delete/'.$row->idpilihan?>">Setujui</a></td>
            </tr>
            <?php } ?>
                
        </tbody>    
    </table>
</div>