package com.dbmp.web.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 加密
 * @author abge
 *
 */
public class Encrypt {
	
	/**
	  * 获取MD5加密后的字符串
	  * @param pw
	  * @return
	  */
	 public static String stringMD5(String pw) {
	  try { 
	        // 拿到一个MD5转换器（如果想要SHA1参数换成”SHA1”） 
	        MessageDigest messageDigest =MessageDigest.getInstance("MD5"); 
	        // 输入的字符串转换成字节数组 
	        byte[] inputByteArray = pw.getBytes(); 
	        // inputByteArray是输入字符串转换得到的字节数组 
	        messageDigest.update(inputByteArray); 
	        // 转换并返回结果，也是字节数组，包含16个元素 
	        byte[] resultByteArray = messageDigest.digest(); 
	        // 字符数组转换成字符串返回 

	        // 首先初始化一个字符数组，用来存放每个16进制字符 
	        char[] hexDigits = {'0','1','2','3','4','5','6','7','8','9', 'A','B','C','D','E','F' }; 
	        // new一个字符数组，这个就是用来组成结果字符串的（解释一下：一个byte是八位二进制，也就是2位十六进制字符（2的8次方等于16的2次方）） 
	        char[] resultCharArray =new char[resultByteArray.length * 2]; 
	        // 遍历字节数组，通过位运算（位运算效率高），转换成字符放到字符数组中去 
	        int index = 0;
	        for (byte b : resultByteArray) { 
	           resultCharArray[index++] = hexDigits[b>>> 4 & 0xf]; 
	           resultCharArray[index++] = hexDigits[b& 0xf]; 
	        }
	        // 字符数组组合成字符串返回 
	        return new String(resultCharArray); 
	        
	     } catch (NoSuchAlgorithmException e) { 
	        return null; 
	     } 
	 }
	 
	 /**
	 * @Title: encByMessy
	 * @Description: TODO
	 * @param @param pw
	 * @param @return    
	 * @return String
	 * @throws
	 */
	public static String encByMessy(String pw) {
		 String first = stringMD5(pw);
		 if(first != null){
			String second = "xx123abc456xx" + first;
			first = stringMD5(second);
		 }
		 return first;
	 }

}