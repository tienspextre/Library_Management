package com.a2m.sso.service;

import java.sql.SQLException;

public interface ComSeqService {
    public String getSeq(String seqName) throws SQLException;
}
