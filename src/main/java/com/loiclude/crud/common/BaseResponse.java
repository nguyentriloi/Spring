package com.loiclude.crud.common;

public class BaseResponse<E> {
    private String message;

    private boolean success;

    private int code;

    private E data;

    public BaseResponse(E data) {
        this.code = 100;
        this.message = "success";
        this.success = true;
        this.data = data;
    }

    public BaseResponse(String message, boolean success, int code) {
        this.message = message;
        this.success = success;
        this.code = code;
    }

    public BaseResponse() {
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public E getData() {
        return data;
    }

    public void setData(E data) {
        this.data = data;
    }
}
