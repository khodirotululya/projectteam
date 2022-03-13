<div style="margin-bottom: 10px;" class="col-xs-12">
  <div class="pull-right">
       <a href="<?=base_url('Cetak/cetak_laporan/'.$this->uri->segment(3))?>" class="btn btn-info"><i class="fa fa-print"></i> Cetak</a>  
  </div>
</div>

<div class="col-xs-12">
    <div class="box box-success">
        <div class="box-header">
            <div class="row">
                <div class="col-md-6">
                    <h3 class="box-title">Laporan Kas Masuk Sekolah</h3>
                 </div>
            </div>
        </div>
        <div class="box-body">
            <table class="table table-striped">
<?php $katot = 0;


if (!empty($isi['danabos'])) {
    ?>
                   <thead><tr> <th colspan="4" style="size: 16px; background-color: #ffff00;">Lainnya</th></tr></thead>
                   <tbody>
                       <tr>
                         <th colspan="2">Keterangan</th>
                         <th colspan="2">Nominal</th>
               </tr>
                        <?php 
               $total = 0;
               foreach ($isi['pemasukan'] as $k) { ?>
                       <tr>
                         <td colspan="2"><?=$k->keterangan?></td>
                         <td style="width: 10px;">Rp.</td>
                         <td style="text-align: right;"><?=number_format($k->nominal,0,',','.')?></td>
                       </tr>
               <?php
               $total+=$k->nominal;
                }$katot+=$total; ?>
                       <tr>
                         <th colspan="2">Total</th>
                         <th>Rp.</th>
                         <th style="text-align: right;"><?=number_format($total,0,',','.')?></th>
                       </tr>
                   </tbody>
   
   <?php } ?>
                     <tr style="size: 18; background-color: #ffff00;">
                       <th colspan="2"> <i>Total Pemasukan hari ini</i> </th>
                       <th>Rp.</th>
                       <th style="text-align: right;"><?=number_format($katot,0,',','.')?></th>
                     </tr>
               </table>
           </div>
       </div>
   </div>