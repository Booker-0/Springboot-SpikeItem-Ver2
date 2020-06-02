package com.imooc.miaoshaproject.error;

/**
 * Created by lyy.
 */
public interface CommonError {
    public int getErrCode();
    public String getErrMsg();
    public CommonError setErrMsg(String errMsg);


}
