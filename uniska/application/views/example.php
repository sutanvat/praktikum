<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a 
{
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: none;
}
ul
{
	height: 40px;
	width: 450px;
	margin: 0 auto;
	background: green;
}
li
{
	float: left;
	list-style: none;
}
a
{
	color: black;
	text-decoration: none;
	font-weight: bold;
	display: block;
	padding: 10px 15px;
}
a:hover{
	background:white;				
}
</style>
</head>
<body>
	<ul id="menu">
<li><a href='<?php echo site_url('examples/karyawan')?>'>Karyawan</a></li>
<li><a href='<?php echo site_url('examples/siswa')?>'>Siswa</a></li>
<li><a href='<?php echo site_url('examples/dosen')?>'>Dosen</a></li>
<li><a href='<?php echo site_url('examples/guru')?>'>Guru</a></li>
<li><a href='<?php echo site_url('examples/praktikum')?>'>Praktikum</a></li>

	</ul>
	<div style='height:20px;'></div>  
    <div>
		<?php echo $output; ?>
    </div>
</body>
</html>
