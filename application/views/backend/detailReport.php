
<style>
</style>
<div class="main-content">
			<?php
				foreach($survey as $s ){
					?>
        <section class="section">
          <div class="section-header">
		  <a href="<?= base_url('admin/report') ?>"
				class="btn btn-icon btn-info btn-md float-left text-left" data-placement="bottom"
				data-toggle="tooltip" title="Kembali">
				<i class="fas fa-angle-left"></i>
			</a>
            <h1 class="float-left text-left mr-auto ml-3"><?=$s->nama_survei?></h1>
			<a href="<?= base_url('backend/dashboard/exportPdf/'.$s->id) ?>"
				class="btn btn-lg btn-icon btn-primary btn-md float-left text-left" data-placement="bottom"
				data-toggle="tooltip" title="Download" target="_blank"> 
				<i class="fas fa-file-pdf fa-lg"></i> Download PDF
			</a>
			
          </div>
		<div class="section-body">
			<h2 class="section-title">Report Tracer Study</h2>
			<p class="section-lead">
			<?=$s->deskripsi?>
			</p>
			<div class="row">
				<?php
				foreach($pertanyaan as $p ):
					?>
					<div class="w-50 px-3">
						<div class="card">
					<div class="card-header">
						<h4><?=$p->pertanyaan?></h4>
						<a data-collapse="#mycard-collapse<?=$p->id?>" class="btn btn-icon btn-info ml-auto" href="#"><i class="fas fa-minus"></i></a>
					</div>
					<div class="collapse show" id="mycard-collapse<?=$p->id?>">
                  	<div class="card-body">
					  <div class="canvas">
					  	<canvas class="chart" id="myPie<?=$p->id?>" style="height:300px;"></canvas>
					  </div>
						
						<script>
						var mychart = document.getElementById("myPie<?=$p->id?>").getContext('2d');
						let round_graph<?=$p->id?> = new Chart(mychart, {
							type: 'doughnut',
							data: {
							labels: [
									<?php foreach($jawaban as $j):
											if($j->id_pertanyaan == $p->id):
										?>
									'<?=$j->jawaban?>', 
									<?php endif; 
									endforeach; ?>
									],
							datasets: [{
								lable: 'Samples',
								data: [
									<?php foreach($jawaban as $j):
											if($j->id_pertanyaan == $p->id):
										?>
									'<?=$j->jlh?>', 
									<?php endif; 
									endforeach; ?>
								],
								backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc','#f9c74f','#e0aaff','#e5383b','#979dac','#80ed99','#cbf3f0','#ccff33','#008000','#ffc9b9','#f20089','#ffc4d6'],
								hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf','#f6bd60','#c77dff','#ba181b','#5c677d','#57cc99','#2ec4b6','#38b000','#004b23','#d68c45','#db00b6','#ff5d8f'],
								hoverBorderColor: "rgba(234, 236, 244, 1)",
							}]
							},


						})

						</script>
                	</div>
					</div>
            	</div>
					</div>
                
			<?php endforeach; ?>
		</section>

			<?php
				}
				?>
</div>

