class Login
  include DataMapper::Resource

  property :id,               Serial
  property :username,         String, :length => 1..25
  property :email,            String, :length => 7..50
  property :password,         String, :length => 40


end

__END__
CREATE TABLE `logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` char(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
