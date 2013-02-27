class AcGivenState
  include DataMapper::Resource

  property :id,             Serial
  property :state,          String, :length => 1..55

end

__END__
CREATE TABLE `ac_given_states` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(55) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
