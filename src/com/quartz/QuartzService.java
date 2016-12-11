package com.quartz;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;

public class QuartzService extends HttpServlet{
	private static final long serialVersionUID = 1L;

	String startup = null;
	public void doInterRestful() {

		if (startup == null)
		{
			try {
				startup = "0 59 16 * * ? ";
				//startup ="0/3 * * * * ?";
				System.out.println("startup..." + startup);
			} catch (Exception e) {
				startup = "0 0/30 * * * ?";
				e.printStackTrace();
			}
			SchedulerFactory sf = new StdSchedulerFactory();
			try {
				Scheduler sd = sf.getScheduler();
				//       创建jobDetail实例，绑定Job实现类  
				//       指明job的名称，所在组的名称，以及绑定job类 
				JobDetail job = new JobDetail("job11", "group11",	TestJob.class);
				Trigger trigger = new CronTrigger("trigger11", "group11", "job11",	"group11", startup);
				/*JobDetail job = new JobDetail("job4", "group4",	InterRestfulTime.class);
				Trigger trigger = new CronTrigger("trigger1", "group4", "job4",	"group4", startup);*/
				sd.scheduleJob(job, trigger);
				sd.start();

			} catch (SchedulerException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	public void init() throws ServletException {
		doInterRestful();
	}
}
