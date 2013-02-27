class AcceptanceCriterion
  include DataMapper::Resource

  property :id,                     Serial
  property :status_id,              Integer
  property :when_action,            String, :length => 1..50, :required => true

end

__END__
CREATE TABLE `acceptance_criteria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status_id` int(11) DEFAULT NULL,
  `when_action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
