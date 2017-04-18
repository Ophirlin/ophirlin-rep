package com.dbmp.web.utils;

/**
 * 转化工具类
 * @author abge
 *
 */
public class TransformUtil {

	/**
	 * byte数组转化成十六进制  字符串，以" "隔开
	 * @param src
	 * @return  String
	 */
	public static String byte2HexStr(byte[] src) {      
		   StringBuilder stringBuilder = new StringBuilder("");     
		   if (src == null || src.length <= 0) {     
		       return null;     
		   }     
		   for (int i = 0; i < src.length; i++) {     
		       int v = src[i] & 0xFF;     
		       String hv = Integer.toHexString(v);     
		       if (hv.length() < 2) {     
		    	   if(stringBuilder.length() == 0){
		    		   stringBuilder.append("0");   
		    	   }else{
		    		   stringBuilder.append(" 0");   
		    	   }
		             
		       }else{
		    	   if(stringBuilder.length() != 0){
		    		   stringBuilder.append(" ");
		    	   }
		       }
		       stringBuilder.append(hv);     
		   }     
		   return stringBuilder.toString();           
		} 
	
	/**
	 * 16进制字符串数组转byte数组，与byte2HexStr对应
	 * @param str
	 * @return
	 */
	public static int[] hexStr2Byte(String[] str) {      
		   if (str == null || str.length <= 0) {     
		       return null;     
		   }     
		   int[] b = new int[str.length];
		   for (int i = 0; i < str.length; i++) {     
		       int v = Integer.parseInt(str[i],16);
		       b[i] = v;
		   }     
		   return b;           
		} 
}
