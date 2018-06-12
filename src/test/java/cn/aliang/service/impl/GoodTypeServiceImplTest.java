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

import cn.aliang.Util.ProtoStuffUtil;
import cn.aliang.dao.GoodTypeDao;
import cn.aliang.entity.GoodType;
import com.dyuproject.protostuff.LinkedBuffer;
import com.dyuproject.protostuff.ProtostuffIOUtil;
import com.dyuproject.protostuff.runtime.RuntimeSchema;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.omg.SendingContext.RunTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import com.dyuproject.protostuff.Schema;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml", "classpath:spring/spring-service.xml"})
public class GoodTypeServiceImplTest {

    @Autowired
    private GoodTypeDao goodTypeDao;

    @Autowired
    private JedisPool jedisPool;

    Logger logger =  LoggerFactory.getLogger(this.getClass());
    @Test
    public void testRedis(){
        List<GoodType> list = goodTypeDao.queryGoodType();
        Jedis jedis = jedisPool.getResource();
        Schema schema = RuntimeSchema.getSchema(GoodType.class);
        byte[] buff = null;
        List<byte[]> bytes = new ArrayList<byte[]>();
        for(GoodType type : list){
            logger.info(type.toString());
            buff = ProtostuffIOUtil.toByteArray(type, schema, LinkedBuffer.allocate(LinkedBuffer.DEFAULT_BUFFER_SIZE));
            bytes.add(buff);
        }
        byte[] key = "goodType".getBytes();
        jedis.set(key, ProtoStuffUtil.serializeList(list));
        byte[] re =  jedis.get(key);
        List r =  ProtoStuffUtil.deserializeList(re, GoodType.class);
    }
}