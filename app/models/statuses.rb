class Status
  include DataMapper::Resource

  property :id,             Serial
  property :status,         String, :length => 1..15, :required => true
  
  # Associations
  
end


__END__
CREATE TABLE `statuses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

