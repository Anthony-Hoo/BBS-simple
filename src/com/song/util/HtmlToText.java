package com.song.util;

public class HtmlToText
{
    public String getText(String html)
    {
        String text =  html.replaceAll("</?[^>]*>", "").replaceAll("\\s", "").replaceAll("&[\\w]{1,6};", "");
        return text;
    }
}
