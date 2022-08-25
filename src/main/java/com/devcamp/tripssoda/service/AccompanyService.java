package com.devcamp.tripssoda.service;

import com.devcamp.tripssoda.dto.AccompanyDto;
import com.devcamp.tripssoda.dto.SearchCondition;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface AccompanyService {

    public int selectUserAccompanyCnt(Integer userId);

    public List<AccompanyDto> selectAllUserAccompany(Integer userId, SearchCondition sc);
    int getCount() throws Exception;

//    int write(AccompanyDto dto) throws Exception;

    int write(AccompanyDto dto, HttpServletRequest request, MultipartFile uploadThumb) throws Exception;

    AccompanyDto read(Integer id) throws Exception;

    int modify(AccompanyDto dto) throws Exception;

    int remove(Integer id, Integer userId) throws Exception;

    List<AccompanyDto> getPage(Map map) throws Exception;


    List<AccompanyDto> waitingGetPage(Map map) throws Exception;

    int waitingGetCount() throws Exception;
}
