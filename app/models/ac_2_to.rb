class Ac2To
  include DataMapper::Resource

  property :id,                       Serial
  property :acceptance_criterion_id,  Integer
  property :ac_then_outcome_id,       Integer
  property :order_id,                 Integer, :min => 1, :max => 20

end

__END__
CREATE TABLE `ac_2_to` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `acceptance_criterion_id` int(11) DEFAULT NULL,
  `ac_then_outcome_id` int(11) DEFAULT NULL,
  `order_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
