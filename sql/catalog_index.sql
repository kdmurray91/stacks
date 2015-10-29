create table catalog_index (
       id	int unsigned not null primary key auto_increment,
       batch_id int unsigned not null,
       cat_id   int unsigned not null,
       tag_id   int unsigned not null,
       snps     int unsigned not null,
       parents  int unsigned not null,
       progeny  int unsigned not null,
       alleles  int unsigned not null,
       marker       enum('aa/bb', 'aa/b-', '-a/bb', 'ab/--', '--/ab', 'aa/ab', 'ab/aa', 'ab/a-', '-a/ab', 'ab/ab', 'ab/ac', 'ab/cd', 'ab/cc', 'cc/ab', 'ab/c-', '-c/ab', ''),
       uncor_marker enum('aa/bb', 'aa/b-', '-a/bb', 'ab/--', '--/ab', 'aa/ab', 'ab/aa', 'ab/a-', '-a/ab', 'ab/ab', 'ab/ac', 'ab/cd', 'ab/cc', 'cc/ab', 'ab/c-', '-c/ab', ''),
       valid_progeny int unsigned not null default 0,
       chisq_pval float not null default 1.0,
       lnl        float not null default 0.0,
       ratio      varchar(512),
       ests       int unsigned not null,
       pe_radtags int unsigned not null,
       blast_hits int unsigned not null,
       geno_cnt   int unsigned not null,
       chr        varchar(32),
       bp         int unsigned default 0,
       type	  enum('genomic', 'exon', 'intron'),
       ref_id     int unsigned not null,
       INDEX batch_index (batch_id),
       INDEX tag_index (tag_id),
       INDEX snps_index (snps),
       INDEX parents_index (parents),
       INDEX progeny_index (progeny),
       INDEX allele_index (alleles),
       INDEX marker_index (marker),
       INDEX valid_index (valid_progeny),
       INDEX lnl_index (lnl),
       INDEX chisq_pval_index (chisq_pval),
       INDEX ests_index (ests),
       INDEX pe_rad_index (pe_radtags),
       INDEX hits_index (blast_hits),
       INDEX geno_index (geno_cnt),
       INDEX chr_index (chr),
       INDEX bp_index (bp),
       INDEX type_index (type)
);