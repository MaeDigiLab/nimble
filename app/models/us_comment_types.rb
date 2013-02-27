class UsCommentType
  include DataMapper::Resource

  property :id,              Serial
  property :type,            String,   :required => true, :length => 1..50
  
  # Associations

end


__END__
CREATE TABLE `us_comment_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
