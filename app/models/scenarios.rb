class Scenario
  include DataMapper::Resource

  property :id,              Serial
  property :name,            String,   :required => true, :length => 1..50
  property :last_edit_date,  DateTime, :required => true
  property :login_id,        Integer,  :required => true
  
  # Associations

end


__END__
CREATE TABLE `scenarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

