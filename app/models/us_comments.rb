class UsComment
  include DataMapper::Resource

  property :id,                     Serial
  property :comment,                String,   :required => true, :length => 1..255
  property :date_created,           DateTime, :required => true
  property :login_id,               Integer,  :required => true
  property :user_story_id,          Integer,  :required => true
  property :us_comment_type_id,     Integer,  :required => true
  property :us_comment_id,          Integer,  :required => true
  property :acceptance_criteria_id, Integer,  :required => true
  
  # Associations

end


__END__
CREATE TABLE `us_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `login_id` int(11) NOT NULL,
  `user_story_id` int(11) NOT NULL,
  `us_comment_type_id` int(11) NOT NULL,
  `us_comment_id` int(11) DEFAULT NULL,
  `acceptance_criteria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
