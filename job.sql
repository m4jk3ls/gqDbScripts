BEGIN
  dbms_scheduler.create_job(job_name        => 'delete_outdated_active_questions',
							job_type        => 'PLSQL_BLOCK',
							job_action      => 'BEGIN DELETE FROM active_question WHERE creation_date < SYSTIMESTAMP - INTERVAL ''15'' MINUTE; COMMIT; END;',
							start_date      => SYSTIMESTAMP,
							repeat_interval => 'FREQ=HOURLY;BYMINUTE=0,15,30,45;BYSECOND=0',
							end_date        => NULL,
							enabled         => TRUE,
							comments        => 'Job deletes all active questions which are outdated from 15 minutes.');
END;