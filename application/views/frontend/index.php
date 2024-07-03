
				<?php 
				foreach($website as $web): ?>
<main class="l-main">
<style>
figure.snip1192 blockquote{
	background-color: <?=$web->warna?> !important;
}
figure.snip1192 blockquote h5 span{
	background-color: <?=$web->warna2?> !important;
}
.button{
	background-color: <?=$web->warna2?> !important;
	color: <?=$web->warna?>!important;
}
.button:hover{
	background-color: <?=$web->warna?> !important;
	color: white !important;
}
.scrolltop{
	background-color: <?=$web->warna2?> !important;
	color:<?=$web->warna?> !important;
}
.scrolltop:hover{
	background-color: <?=$web->warna?> !important;
	color: white !important;
}
</style>
            <!--========== HOME ==========-->
            <section class="home" id="home">
                <div class="home__container bd-container bd-grid">
                    <div class="home__data">
                        <h1 class="home__title" style="color:<?=$web->warna?> ;"><?=$web->web?></h1>
                        <h2 class="home__subtitle">Segera daftarkan dirimu<br> sebagai alumni.</h2>
                        <a href="<?= base_url('register/daftar')?>" class="button">Daftar Disini</a>
                    </div>
                    <img src="<?= base_url('assets')?>/user/<?= $web->logo?>" alt="" class="home__img">
                </div>
            </section>
            
            <!--========== TESTIMONI ==========-->
            <section class="menu section bd-container" id="testimoni">
                <span class="section-subtitle" style="color:<?=$web->warna?> ;">Testimoni</span>
                <h2 class="section-title">Kesan & Pesan</h2>


            <div class="row">
				<?php foreach($testimoni as $testi) : ?>
                <div class="col">
                    <figure class="snip1192">
                    <blockquote><?= $testi->testimoni ?></blockquote>
                    <div class="author" style="color:<?=$web->warna?> ;">
                        <img src="<?=base_url();?>assets/backend/img/avatar-2.png" alt="sq-sample1"/>
                        <h5><?= $testi->nama_depan?> <?= $testi->nama_belakang?></h5>
                    </div>
                    </figure>
                </div>
				<?php endforeach; ?>
            </div>
    </section>
</div>
<?php endforeach; ?>
