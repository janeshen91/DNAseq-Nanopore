##process 202040430
dorado duplex dna_r10.4.1_e8.2_400bps_sup@v4.1.0 pod5s/ > duplex.bam
str="20240430_construct150-153_PP0-PP1_duplex"
docker run --gpus all -v /gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass:/input \
-v /batch-output/$str/:/output //620901718958.dkr.ecr.us-east-1.amazonaws.com/basecaller \
bash -c 'dorado duplex dna_r10.4.1_e8.2_400bps_sup@v4.1.0 /input//barcode01 \
> /output/barcode01/barcode01Duplex.bam' 
str="20240430_construct150-153_PP0-PP1_duplex"

nohup docker run --gpus all -v /gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass:/input \
-v /batch-output/$str:/output 620901718958.dkr.ecr.us-east-1.amazonaws.com/basecaller \
bash -c 'dorado duplex dna_r10.4.1_e8.2_400bps_sup@v4.2.0 \
/input//barcode01/ \
--emit-fastq -t 10 \
> /output/barcode01/barcode01.fastq' &

Q30=99.9%

str="20240430_construct150-153_PP0-PP1_duplex"

/input//barcode01/FAZ08494_pass_barcode01_620f971f_6175fb44_0.pod5 \
> /output/barcode01DuplexSupPod5_0ii.bam 





#dorado duplex sup pod5s/ > duplex.bam
##mconstructaka and minimap both require fastq files
#

str="20240430_construct150-153_PP0-PP1_duplex"
docker run -v /batch-input/:/input \
-v /batch-output/$str/barcode01:/output quay.io/biocontainers/samtools:1.20--h50ea8bc_0 \
samtools view /output/barcode01DuplexSupPod5_0.bam |less
> /batch-output/$str/barcode01/barcode01Duplex.fastq


dna_r10.4.1_e8.2_400bps_hac@v4.2.0



docker run --gpus all -v /gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass:/input \
-v /batch-output/$str:/output 620901718958.dkr.ecr.us-east-1.amazonaws.com/basecaller \
dorado --help


docker run -v /batch-input/:/input \
-v /batch-output/$str/barcode01:/output quay.io/biocontainers/samtools:1.20--h50ea8bc_0 \
samtools view /output/barcode01Duplex0.bam |less


nohup docker run --gpus all -v /gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass:/input \
-v /batch-output/$str:/output 620901718958.dkr.ecr.us-east-1.amazonaws.com/basecaller \
bash -c 'dorado duplex dna_r10.4.1_e8.2_400bps_sup@v4.2.0 \
/input//barcode01/FAZ08494_pass_barcode01_620f971f_6175fb44_1.pod5 \
--emit-fastq -t 10 \
> /output/barcode01/barcode01Duplex1.fastq' &

##go through the pod5's one by one and duplex call?
search_dir="/gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass/barcode03"
for entry in $search_dir/*
do 
docker run --gpus all -v /gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass:/input \
-v /batch-output/$str:/output 620901718958.dkr.ecr.us-east-1.amazonaws.com/basecaller \
bash -c 'dorado duplex dna_r10.4.1_e8.2_400bps_sup@v4.2.0 \
/input//barcode03/$entry.pod5 \
--emit-fastq -t 10 \
> /output/barcode03/$entry.fastq'
done

str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run --gpus all -v /gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass:/input \
-v /batch-output/$str:/output 620901718958.dkr.ecr.us-east-1.amazonaws.com/basecaller \
bash -c 'dorado duplex dna_r10.4.1_e8.2_400bps_sup@v4.2.0 \
/input//barcode04 \
--emit-fastq -t 10 \
> /output//barcode04.fastq' >barcode04.txt &

str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run --gpus all -v /gridion-input/$str/$str/20240430_1715_X2_FAZ08494_620f971f/pod5_pass:/input \
-v /batch-output/$str:/output 620901718958.dkr.ecr.us-east-1.amazonaws.com/basecaller \
bash -c 'dorado duplex dna_r10.4.1_e8.2_400bps_sup@v4.2.0 \
/input//barcode03 \
--emit-fastq -t 10 \
> /output//barcode03.fastq' >barcode03.txt &

##clair3 on both barcode2 and barcode04

##sniffles
str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run -v /batch-input/:/input \
-v /batch-output/$str/:/output 620901718958.dkr.ecr.us-east-2.amazonaws.com/sniffles \
sniffles \
--input /output/mconstructaka/barcode02/calls_to_ref.bam \
--vcf /output/sniffles/barcode02.vcf \
--non-germline >sniffles02Sniffles.txt &

str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run -v /batch-input/:/input \
-v /batch-output/$str/:/output 620901718958.dkr.ecr.us-east-2.amazonaws.com/sniffles \
sniffles \
--input /output/mconstructaka/barcode04/calls_to_ref.bam \
--vcf /output/sniffles/barcode04.vcf \
--non-germline >sniffles04Sniffles.txt &

str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run -v /batch-input/:/input \
-v /batch-output/$str/:/output 620901718958.dkr.ecr.us-east-2.amazonaws.com/sniffles \
sniffles \
--input /output/mconstructaka/barcode01/calls_to_ref.bam \
--vcf /output/sniffles/barcode01.vcf \
--non-germline >sniffles01Sniffles.txt &



nohup docker run -v /batch-input/:/input \
-v /batch-output/$str:/output hkubal/clair3:latest /opt/bin/run_clair3.sh \
--bam_fn=/output/mconstructaka/barcode04//calls_to_ref.bam \
--ref_fn=/output/reference/rAd_construct153.fa \
--output=/output/clair3/mconstructaka \
--threads=8 \
--platform=ont \
--model_path=/opt/models/ \
--include_all_ctgs --enable_long_indel \
--longphase_for_phasing \
--chunk_size 10000 \
--indel_min_af=0.05 >clair3_mconstructakaRconstruct150nothaploid precise.txt &

##what are the other phasing we want to do 
##let's takea. look at these to be sure theyre 80%
str="20240322_construct150_153_PP0_PP1_gDNA"





str="20240430_construct150-153_PP0-PP1_duplex"

nohup docker run -v /batch-input/:/input \
-v /batch-output/$str:/output \
--gpus 0 ontresearch/mconstructaka:v1.8.0 mconstructaka_haploid_variant \
-i /output/barcode02/barcode2.fastq  \
-r /output/reference/rAd_construct153.fa -o /output/mconstructaka/barcode02/ \
>mconstructakabarcode02.txt &



str="20240430_construct150-153_PP0-PP1_duplex"

nohup docker run -v /batch-input/:/input \
-v /batch-output/$str:/output \
--gpus 0 ontresearch/mconstructaka:v1.8.0 mconstructaka_haploid_variant \
-i /output/barcode04.fastq  \
-r /output/reference/rAd_construct153.fa -o /output/mconstructaka/barcode04/ \
>mconstructakabarcode04.txt &


str="20240430_construct150-153_PP0-PP1_duplex"

nohup docker run -v /batch-input/:/input \
-v /batch-output/$str:/output \
--gpus 0 ontresearch/mconstructaka:v1.8.0 mconstructaka_haploid_variant \
-i /output/barcode01/barcode01.fastq  \
-r /output/reference/rconstruct150.fa -o /output/mconstructaka/barcode01/ \
>mconstructakabarcode01.txt &



##run fastqc on barcode02 and barcode04
str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run -v /root/batch-output/outputApril192023JS/pass:/input \
-v /batch-output/$str//:/output 620901718958.dkr.ecr.us-east-2.amazonaws.com/fastqc \
fastqc --nano /output/barcode04.fastq \
-o /output/fastqc/ &


nohup docker run -v /root/batch-input/$str/:/input \
-v /batch-output/$str//:/output 620901718958.dkr.ecr.us-east-2.amazonaws.com/fastqc \
fastqc -t 10 /output/barcode04.fastq \
-o /output/fastqc/ >/batch-output/$str/barcode04Fastqc.txt &

nohup docker run -v /root/batch-input/$str/:/input \
-v /batch-output/$str//:/output 620901718958.dkr.ecr.us-east-2.amazonaws.com/fastqc \
fastqc -t 10 /output/barcode01/barcode01.fastq \
-o /output/fastqc/ >/batch-output/$str/barcode01Fastqc.txt &

str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run -v /batch-input/:/input \
-v /batch-output/$str:/output hkubal/clair3:latest /opt/bin/run_clair3.sh \
--bam_fn=/output/mconstructaka/barcode04//calls_to_ref.bam \
--ref_fn=/output/reference/rAd_construct153.fa \
--output=/output/clair3/barcode04/ \
--threads=8 \
--platform=ont \
--model_path=/batch-output/rerio/dorado_models/r1041_e82_400bps_sup_v430 \
--include_all_ctgs --enable_long_indel \
--var_pct_full=1 \
--ref_pct_full=1 \
--chunk_size=10000 \
--snp_min_af=0 \
--no_phasing_for_fa \
--haploid_sensitive >clair3_barcode04.txt &


###estimate 
str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run -v /batch-input/:/input \
-v /batch-output/$str:/output hkubal/clair3:latest /opt/bin/run_clair3.sh \
--bam_fn=/output/mconstructaka/barcode04//calls_to_ref.bam \
--ref_fn=/output/reference/rAd_construct153.fa \
--output=/output/clair3/barcode04/ \
--threads=8 \
--platform=ont \
--include_all_ctgs --enable_long_indel \
--var_pct_full=1 \
--ref_pct_full=1 \
--chunk_size=10000 \
--snp_min_af=0 \
--no_phasing_for_fa \
--model_path=/opt/models/r941_prom_sup_g5014 \
--haploid_sensitive >clair3_barcode04.txt &


str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run -v /batch-input/:/input \
-v /batch-output/$str:/output hkubal/clair3:latest /opt/bin/run_clair3.sh \
--bam_fn=/output/mconstructaka/barcode02//calls_to_ref.bam \
--ref_fn=/output/reference/rAd_construct153.fa \
--output=/output/clair3/barcode02/ \
--threads=8 \
--platform=ont \
--include_all_ctgs --enable_long_indel \
--var_pct_full=1 \
--ref_pct_full=1 \
--chunk_size=10000 \
--snp_min_af=0 \
--no_phasing_for_fa \
--model_path=/opt/models/r941_prom_sup_g5014 \
--haploid_sensitive >clair3_barcode02.txt &


str="20240430_construct150-153_PP0-PP1_duplex"
nohup docker run \
-v /batch-output/$str:/output hkubal/clair3:latest /opt/bin/run_clair3.sh \
--bam_fn=/output/mconstructaka/barcode01//calls_to_ref.bam \
--ref_fn=/output/reference/rconstruct150.fa \
--output=/output/clair3/barcode01/ \
--threads=8 \
--platform=ont \
--include_all_ctgs --enable_long_indel \
--var_pct_full=1 \
--ref_pct_full=1 \
--chunk_size=10000 \
--snp_min_af=0 \
--no_phasing_for_fa \
--model_path=/opt/models/r941_prom_sup_g5014 \
--haploid_sensitive >clair3_barcode01.txt &

##haplodmf
docker run \
-v /batch-output/$str:/output 620901718958.dkr.ecr.us-east-2.amazonaws.com/haplodmf \
bash -c './haplodmf.sh \
-i /output/mconstructaka/barcode01//calls_to_ref.bam \
-r /output/reference/rconstruct150.fa \
-o /output/haplodmf/barcode01'


