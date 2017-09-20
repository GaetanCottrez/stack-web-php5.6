SET foreign_key_checks = 0;
DROP TABLE `sportges_access_code`, `sportges_activity`, `sportges_activity_planning`, `sportges_activity_planning_lines`, `sportges_activity_state`, `sportges_activity_stock`, `sportges_activity_stock_update`, `sportges_activity_users`, `sportges_books`, `sportges_civilities`, `sportges_companies`, `sportges_countries`, `sportges_credit_type`, `sportges_days`, `sportges_discipline`, `sportges_functions`, `sportges_groups`, `sportges_languages`, `sportges_legalform`, `sportges_level`, `sportges_logs_authentification`, `sportges_logs_perms`, `sportges_monitor_agenda`, `sportges_perms`, `sportges_perm_to_role`, `sportges_rates`, `sportges_reporting_moniteur`, `sportges_reservations_calendar`, `sportges_roles`, `sportges_seasons`, `sportges_sessions`, `sportges_settings`, `sportges_settings_history`, `sportges_tables`, `sportges_table_stock_reservation`, `sportges_users`, `sportges_users_to_alert`, `sportges_users_to_credit`, `sportges_users_to_discipline`, `sportges_user_history_credit`, `sportges_user_to_filter`, `sportges_user_to_role`, `sportges_view_activity`, `sportges_view_activity_schedule`, `sportges_view_generate_date`, `sportges_view_generate_date_calcul_day`, `sportges_view_generate_date_calcul_month`, `sportges_view_generate_date_calcul_range`, `sportges_view_generate_date_calcul_year`, `sportges_view_union_activities`, `sportges_view_users`;

UPDATE `sportges_users` SET
`id` = '1',
`login` = 'webges.admin',
`display_user` = '0',
`email` = 'dev@orditech.be',
`password` = '0ef51ee05d9f051599650acbe46cce8afda3d2ec',
`name` = 'Admin',
`firstname` = '\r\n\r\n',
`birthday_date` = '2005-09-14',
`civility` = '1',
`disabled` = '0',
`phone` = '46325161',
`gsm` = '',
`phone_prefix` = '33',
`gsm_prefix` = NULL,
`fax_prefix` = NULL,
`last_login` = '2017-08-10 12:49:54',
`last_activity` = '2017-08-10 12:50:46',
`last_login_attempt` = '2017-08-09 11:12:33',
`forgot_exp` = NULL,
`remember_time` = NULL,
`remember_exp` = NULL,
`function` = NULL,
`language` = '1',
`nnb` = NULL,
`number` = '3',
`address` = 'Avenue Reine Louise-marie',
`zip` = '7700',
`city` = 'Mouscron',
`country` = 'FR',
`company_name` = NULL,
`tva` = NULL,
`company` = '1',
`user_preference_email_alert_status_change_request` = '0',
`email_sent` = '0',
`pdf_sent` = '0',
`auto_validate` = '0',
`method_created` = 'CRUD_ADD',
`method_modified` = 'CRUD_EDIT',
`password_display` = '3J/v2WCJqsTQZPkKwvp/bwCn4qznnUh8esHo0E2yuqZtSsnhCT2VO0+Bq7sLgtlAFWdnqr9j+VAMLB1xiSHgRg==',
`automatic_bcc` = '0',
`note` = NULL,
`credit` = '10',
`credit_spinning` = '0',
`level` = 'Nouveau',
`first_connection` = '0',
`first_connection_new_app` = '0',
`name_show_calendar` = NULL,
`CreatedBy` = 'antoine.roge',
`CreatedDate` = '2015-03-17 12:03:44',
`ModifiedBy` = 'antoine.roge',
`ModifiedDate` = '2015-03-17 12:05:06'
WHERE `id` = '1';

INSERT INTO `sportges_users_to_discipline` (`discipline_id`, `user_id`)
VALUES ('1', '1');

DELETE FROM `sportges_users_to_credit`
WHERE `user_id` = '10037' AND `credit_id` = '2' AND `quantity` = '20' LIMIT 1;

ALTER TABLE `sportges_purchase_historic`
ADD `id` tinyint(11) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

