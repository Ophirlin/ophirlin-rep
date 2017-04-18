package com.dbmp.aop;

/**
 * 
 * 前台分布式缓存(redis/memcached)的缓存区域定义
 * <br/>后台主要是添加、更新、删除缓存数据，保持数据一致性
 * @author xiongg
 * @date 创建时间：2015-10-13 下午2:10:27
 */
public abstract class CacheArea {
	
	
	/** 默认缓存区域 */
	public static final String DefaultCacheArea = "DefaultCacheArea";

	/** CCOSP缓存区域 */
	public static final String CCOSP = "CCOSP";
	
	
	
	
}