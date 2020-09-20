package com.xiruisi.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101900724017";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCKDLJaxcTQnS5TAaIStqi95eJpwaWpplNJUDEXytt84WEpeOHSMU1fU+inyd5XaZPrZ4/yMOszTt9eQspXdm1sskZUa9ITUQguYvvuUPdfjBZxONl7VoHG4Rjw/CKY228Gq4+5Zag8nLkfMPO/+zmF05y08fvUO+Tzd54C98QTOHuqWe7dOXR8hVzf/60vkr+nINh4+E9krVfGbNQV2PcXlroOLvRqKtSok3JeHDvqcFM/Yp5LA4s7C/3yGzsk6GDtawwoezyxEX4fSjuzkppBz/UOYktpaU85adic3wsVmh3qEB4NETB5Op4MuJ+11ciiNAF745to4cJ9WmR7CQpRAgMBAAECggEABfewig38iQwSYZIzgF2XA8Z5OBsf3yqKdSPbS20AefCAM7u+/0gUUSeeagpm6x5sP4PVjCGjOS+Spk960bcT2dwHAEU86orZMLAktdOYLfAvVCuh8xv1NjSq0FgF4texf/dQmjITyLL5qaiDEOx6Oxe/sW64dR81sXSdRwGQ30fD7avk1WS1FivigjOcmz3h9+gSoCyhJ3CWjHjjpxW1JK3bpCYBx0zicX2RqJHNaCkX7/7TnS3RKmIPu6NoBHKq1PVsiEuHWRGDTZd+x/vUdUJqgkTXUFyM2LZUSAombgAqrMAn5m/+Li6xQtelI3GDR49EPxM6Vw9zeGLQTl2TcQKBgQD2ox9Q+hkajH/gyr4Vq5QZRUnwg3km2hiarnPFiasL9nQ8At9O0nLPR+rSWy0ibsWVprxAxcG7tjAbGrRI5V/5uTcTKej8HIk6guLVYRwDF/Ar1D8UgVjNGYyHLtCv04bQ0TvvGMZNXUbFqUdYwQB5rbCsFaZqhKZeSXXlFQYwfQKBgQCPSkt4FtsW5hWCCgpOg9wz0foZi9aw5MmDEyTfMwxfe5arxH90rZ4E+3NMDRp554QOX4+4J5n5bfn3eLBDIwGlUUbnlGN56Di16VJPsB1zu6RZBiWaBFxN9gKjiXzUJqQu7Et+sRJapPSHMZH9krrbX6KGzCBT1hBUlaPqX2zdZQKBgCb+36K0CGgUMtvd8nQGruHX/LrUbsFf1mgOkSt4etznWLVsVtZlm9V+L3iXBendzcu9kyJCokEFq1F9xWeJLMWVLUoQZFAISwI/U5IdSoqKrGShqF+bm+jB02BEXKaQMU6u5mUFa8UrrFbwTuGPkn2qorZyrd9FnfBmeQeBbXsZAoGASRUpnNx7bhh4C9U3IIicfUmxd+oc3Cg0p0fSXIza2LBeTslwAIC0wfHGApoEUPzGG9adpN196PwwrAnATN3D7x+fPGowunK4yf9w3fgDbY3c6xL5hq6GrbS179cl9canos8eSkXiCJ1toq6juWNnLpB+gqYGLvxVY+7Wpal6CwkCgYA2MfgjLP8waWp4APQhXVyrtL2TyTVb4uzGRFJ2yX5f1WnprJWTaPE8q6LSJARBXwSiARPEVuqrxK6dyX8AEPhBCRmqZNFyGqDSnvt7pEKDg5q1hr5gEI1tt5cLdew1KD/BDF5iigeo+MQHQhdyIQTfwRVHo/cXlR0fLesSfzq/pQ==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn1IJeaucyBGOE/2cOOnOf0ecVkfTVkHg6UKShwaVJqX63Fq+wzpANJ04vIvS1pAAy0r7fIAqZ1KS+MZ1gTQcqfNHG5aYAKvZFMs4gXk6NELopMp5VfoEfn3aJnEaRJPTKZk/cvpG2POVPCXCQdbixIsL/InlyKtFx7ksh13Bkc7MieFkXkhiVp0Wm6iEqRmQzmhwO3xM5V3vkmTay0O5CWzvoxuUPi8VhfhDMhyimIOGCQ24TvNF4p2hV755SmrVc/hJdALK34Xuh5zsv7BroJIFsTQRX7wwl3IR8LX606O5XDu4hxio3XCfXCefEI+zmbL57Q0lN3wrY3WGFIjmmQIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "  http://www.67373upup.xyz:8888/xiruisi/pay/paySuccess";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "  http://www.67373upup.xyz:8888/xiruisi/pay/paySuccess";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

