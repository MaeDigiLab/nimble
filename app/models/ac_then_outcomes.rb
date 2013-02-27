class AcThenOutcome
  include DataMapper::Resource

  property :id,             Serial
  property :outcome,        String, :length => 1..50

end

__END__
CREATE TABLE `ac_then_outcomes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `outcome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
