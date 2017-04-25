package com.usc.utils;

import org.apache.log4j.Logger;

/**
 * 日志工具
 * 
 * @ClassName: Log4jUtil
 * @Description: TODO
 * @author: 陈玄礼
 * @date: 2017年4月26日 上午12:04:26
 */
public class Log4jUtil {

	private static Logger log;

	// 初始化
	static {
		log = Logger.getLogger(Log4jUtil.class);
	}

	/**
	 * 调试信息
	 * 
	 * @Title: debug
	 * @Description: TODO
	 * @param arg0
	 * @return: void
	 */
	public static void debug(String arg0) {
		log.debug(arg0);
	}

	/**
	 * 错误信息
	 * 
	 * @Title: error
	 * @Description: TODO
	 * @param arg0
	 * @return: void
	 */
	public static void error(String arg0) {
		log.error(arg0);
	}

	/**
	 * 致命信息
	 * 
	 * @Title: fatal
	 * @Description: TODO
	 * @param arg0
	 * @return: void
	 */
	public static void fatal(String arg0) {
		log.fatal(arg0);
	}

	/**
	 * 一般信息
	 * 
	 * @Title: info
	 * @Description: TODO
	 * @param arg0
	 * @return: void
	 */
	public static void info(String arg0) {
		log.info(arg0);
	}

	/**
	 * 警告信息
	 * 
	 * @Title: warn
	 * @Description: TODO
	 * @param arg0
	 * @return: void
	 */
	public static void warn(String arg0) {
		log.warn(arg0);
	}

}
