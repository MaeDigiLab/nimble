class Ac2Gs
  include DataMapper::Resource

  property :id,                       Serial
  property :acceptance_criterion_id,  Integer
  property :ac_given_state_id,        Integer
  property :order,                    Integer, :min => 1, :max => 20

end

__END__
CREATE TABLE `ac_2_gs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `acceptance_criterion_id` int(11) DEFAULT NULL,
  `ac_given_state_id` int(11) DEFAULT NULL,
  `order` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

