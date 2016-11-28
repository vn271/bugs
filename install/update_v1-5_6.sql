"#Update from 1.5 to 1.6 "

ALTER TABLE `projects_issues` ADD `duration` smallint(3) NOT NULL DEFAULT '100' AFTER `created_at`;
ALTER TABLE `projects` ADD `default_assignee` bigint(20) NULL DEFAULT '1';
ALTER TABLE `Issues Table` ADD `weight` bigint(20) NULL default '1';

ALTER TABLE `projects_issues`
CHANGE `created_by` `created_by` bigint(20) NOT NULL DEFAULT '1' AFTER `id`,
CHANGE `weight` `weight` bigint(20) NOT NULL DEFAULT '1' AFTER `status`;

"# Create ToDo Table "
CREATE TABLE IF NOT EXISTS `users_todos` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `issue_id` bigint(20) default NULL,
  `user_id` bigint(20) default NULL,
  `status` tinyint(2) default '1',
  `weight` bigint(20) default 1,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `tags` (`id`, `tag`, `bgcolor`, `created_at`, `updated_at`) VALUES 
(9,	'status:inProgress','#FF6600',	'2016-11-10 23:12:01',	'2016-11-10 23:12:01');
