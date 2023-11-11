package com.a2m.sso.dao;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface ComSeqDAO {

    void setSeq(String seqName);
    String getSeq();
}
