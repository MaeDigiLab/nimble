class Actor
  include DataMapper::Resource

  property :id,                 Serial
  property :actor_name,         String,   :required => true, :length => 1..25,   
  property :actor_description,  String,                      :length => 1..1024
  property :actor_image,        String
  property :last_edit_date,     DateTime, :required => true
  property :login_id,           Integer,  :required => true
  
  # Associations

end

__END__
CREATE TABLE `actors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(25) NOT NULL DEFAULT '',
  `actor_description` text,
  `actor_image` varchar(255) DEFAULT NULL,
  `last_edit_date` timestamp NULL DEFAULT NULL,
  `last_edit_login_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
