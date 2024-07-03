<!-- Main Content -->
<div class="main-content">
	<section class="section">
		<div class="section-header">
			<h1>Kritik & Saran</h1>
		</div>

		<div class="section-body">
			<h2 class="section-title">Daftar Kritik & Saran</h2>
			<?php foreach ($website as $web):?>
			<p class="section-lead">Masukan dari alumni untuk fakultas <?=$web->prodi?> - <?=$web->universitas?></p>
			<?php endforeach; ?>
			<div class="row">
				<?php foreach ($sdank as $t): ?>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card card-primary">
						<div class="card-header">
							<h4><?= $t->nama_depan ?> <?= $t->nama_belakang ?></h4>
						</div>
						<div class="card-body">
							<p><?= $t->kritik_saran?></p>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
			</div>
		</div>
	</section>
</div>
