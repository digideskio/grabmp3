use LWP::Simple;

$base="http://db.oruwebsite.com/hindi/Songs/Best%20Hits%20mp3%20Collection/Hits%20of%20Sonu%20Nigam/";
while(chomp($line = <>)){
    @data = split(/2011 /,$line); 
    $breakit = @data[1]; #grab second half, after 2011        
    $breakit =~ s/^\s+|\s+$//g; #remove leading and trailing spaces
	$fname = $breakit;

    $breakit =~ s/\s/%20/g; #replace spaces with %20
   $url= $base . $breakit;
   print "$url" . "\n";
    print "Downloading  " . "$fname" . "\n";
	$filename = "./$fname";
	getstore($url,$filename);

}


