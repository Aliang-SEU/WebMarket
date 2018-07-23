/*
 *  CMB Confidential
 *
 *  Copyright (C) 2016 China Merchants Bank Co., Ltd. All rights reserved.
 *
 *  No part of this file may be reproduced or transmitted in any form or by any
 *  means, electronic, mechanical, photocopying, recording, or otherwise, without
 *  prior written permission of China Merchants Bank Co., Ltd.
 */

package cn.aliang.service.impl;

import cn.aliang.dao.UserDao;
import cn.aliang.entity.User;
import cn.aliang.service.TestService;
import org.apache.ibatis.builder.StaticSqlSource;
import org.apache.ibatis.datasource.DataSourceFactory;
import org.apache.ibatis.datasource.pooled.PooledDataSource;
import org.apache.ibatis.datasource.pooled.PooledDataSourceFactory;
import org.apache.ibatis.datasource.unpooled.UnpooledDataSource;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.ResultMap;
import org.apache.ibatis.mapping.ResultMapping;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.TransactionIsolationLevel;
import org.apache.ibatis.transaction.TransactionFactory;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.StringUtils;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-*.xml"})
public class TestServiceImplTest {

    @Autowired
    TestService testService;

    private final String environmentId = "development";

    JdbcTransactionFactory jdbcTransactionFactory = new JdbcTransactionFactory();

    @Test
    public void switchDatabase() throws Exception {
        Map<String, String> map = new HashMap<>();
        map.put("driverClass", "com.mysql.jdbc.Driver");
        map.put("jdbcUrl",
                "jdbc:mysql://127.0.0.1:3306/webmarket?useUnicode=true&characterEncoding=utf8&allowMultiQueries=true");
        map.put("user", "root");
        map.put("password", "1234");


        DataSource dataSource =
                new PooledDataSource(map.get("driverClass"), map.get("jdbcUrl"), map.get("user"), map.get("password"));

        Environment.Builder environmentBuilder =
                new Environment.Builder(environmentId).transactionFactory(jdbcTransactionFactory)
                        .dataSource(dataSource);
        Environment environment = environmentBuilder.build();

        Configuration configuration = new Configuration(environment);

        createSelectMapper(configuration, "select * from user", null, User.class);

        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(configuration);
        SqlSession session = sqlSessionFactory.openSession();
        List<User> list = session.selectList("select");
        System.out.println(list);
    }

    /**
     * 创建一个SqlMapper语句到配置类中
     * @param configuration
     * @param sqlStatement
     * @param parameterMappings
     * @param resultType
     */
    private void createSelectMapper(final Configuration configuration, final String sqlStatement,
                                    final List<ParameterMapping> parameterMappings, final Class resultType) {
        StaticSqlSource sqlSource = new StaticSqlSource(configuration, sqlStatement, parameterMappings);

        MappedStatement ms = new MappedStatement.Builder(configuration, "select", sqlSource, SqlCommandType.SELECT)
                .resultMaps(new ArrayList<ResultMap>() {
                    {
                        add(new ResultMap.Builder(configuration, "defaultResultMap", resultType,
                                new ArrayList<ResultMapping>(0)).build());
                    }
                }).build();
        configuration.addMappedStatement(ms);
    }

}
