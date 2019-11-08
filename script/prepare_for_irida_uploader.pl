#!/usr/bin/perl -w
#prepare samplelist.csv and symlinks for irida_uploader
#duanjun1981@gmail.com

use Getopt::Std;
my %options=();
getopts("i:o:p:fh", \%options);
my $USAGE =<<USAGE;

perl prepare_for_irida_uploader.pl -i fastq_files_dir -o output_dir -p irida_project_id 

    -i location for fastq files
    -o output directory
    -p irida project id
    -h help

If you have any issues, please contact jun.duan\@bccdc.ca.

USAGE

die $USAGE if $options{h};
if (not defined($options{i}) or not defined($options{o}) or not defined($options{p}) ){
	die $USAGE;
}

my $project_id=$options{p};
check_folder($options{o});
my $sample_sheet="$options{o}/SampleList.csv";
my %tgg_forward;
my %tgg_reverse;
opendir(DIR, $options{i}) or die $!;
while (my $file = readdir(DIR)) {
	next if ($file =~ m/^\./);
	if($file=~/(\S+)\_S\d+\_\S+\_R1\_001\.fastq.gz/) {
		my $sample_name= $1; 
		$tgg_forward{$sample_name}=$file;
		system("ln -s $options{i}/$file $options{o}");	
	}
	elsif($file=~/(\S+)\_S\d+\_\S+\_R2\_001\.fastq.gz/) {
		my $sample_name= $1; 
		$tgg_reverse{$sample_name}=$file;
		system("ln -s $options{i}/$file $options{o}");	
	}
}
closedir(DIR);

open(INO, ">$sample_sheet") or die $!;
	print INO "[Data]\n";
	print INO "Sample_Name,Project_ID,File_Forward,File_Reverse\n";
	foreach my $sample_name(keys %tgg_forward) {
		print INO "$sample_name\,$project_id\,$tgg_forward{$sample_name}\,$tgg_reverse{$sample_name}\n";
	}
close INO;


sub check_folder {
	my ($folder) = @_;
	if (-d $folder) { }
	else {
		system("mkdir -p $folder");
   	}
}