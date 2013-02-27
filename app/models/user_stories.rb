class UserStory
  include DataMapper::Resource

  property :id,               Serial
  property :actor_id,         Integer,  :required => true
  property :action_statement, String,   :length   => 1.255
  property :goal_statement,   String,   :length   => 1..255
  property :status_id,        Integer
  property :is_substory,      Boolean,  :default  => false
  property :user_story_id,    Integer,  :required => true
  property :scenario_id,      Integer,  :required => true
  property :last_edit_date,   DateTime, :required => true
  property :login_id,         Integer,  :required => true
  
  # Associations

end


__END__
CREATE TABLE `user_stories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `action_statement` varchar(255) DEFAULT NULL,
  `goal_statement` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `is_substory` tinyint(1) DEFAULT NULL,
  `user_story_id` int(11) DEFAULT NULL,
  `scenario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;