#!/bin/sh

#set base home
RESOURCES_HOME=${CATALINA_HOME}/webapps/ROOT/WEB-INF/classes

#change config
pushd ${RESOURCES_HOME}
sed -i "s%casServerLoginUrl=.*%casServerLoginUrl=${casServerLoginUrl}%g" ./sso.properties
sed -i "s%casServerUrlPrefix=.*%casServerUrlPrefix=${casServerUrlPrefix}%g" ./sso.properties
sed -i "s%serverName=.*%serverName=${serverName}%g" ./sso.properties
sed -i "s%logOutServerUrl=.*%logOutServerUrl=${logOutServerUrl}%g" ./sso.properties
sed -i "s%logOutBackUrl=.*%logOutBackUrl=${logOutBackUrl}%g" ./sso.properties
sed -i "s%casServerLoginUrl_Inner=.*%casServerLoginUrl_Inner=${casServerLoginUrl_Inner}%g" ./sso.properties
sed -i "s%casServerUrlPrefix_Inner=.*%casServerUrlPrefix_Inner=${casServerUrlPrefix_Inner}%g" ./sso.properties
sed -i "s%serverName_Inner=.*%serverName_Inner=${serverName_Inner}%g" ./sso.properties
sed -i "s%logOutServerUrl_Inner=.*%logOutServerUrl_Inner=${logOutServerUrl_Inner}%g" ./sso.properties
sed -i "s%logOutBackUrl_Inner=.*%logOutBackUrl_Inner=${logOutBackUrl_Inner}%g" ./sso.properties
sed -i "s%innerDomains=.*%innerDomains=${innerDomains}%g" ./sso.properties

sed -i "s%whiteList=.*%whiteList=${whiteList}%g" ./whitelist.properties

sed -i "s%paas.sdk.mode=.*%paas.sdk.mode=${SDK_MODE}%g" ./paas/paas-conf.properties
sed -i "s%ccs.appname=.*%ccs.appname=${CCS_NAME}%g" ./paas/paas-conf.properties
sed -i "s%ccs.zk_address=.*%ccs.zk_address=${ZK_ADDR}%g" ./paas/paas-conf.properties

#sed -i "s%uac.dubbo.registry.address=.*%uac.dubbo.registry.address=${DUBBO_REGISTRY}%g" ./dubbo/dubbo.properties
#sed -i "s%dubbo.protocol=.*%dubbo.protocol=${DUBBO_PROTOCOL}%g" ./dubbo/dubbo.properties
#sed -i "s%dubbo.protocol.port=.*%dubbo.protocol.port=${DUBBO_PORT}%g" ./dubbo/dubbo.properties
popd


nohup ${CATALINA_HOME}/bin/catalina.sh run >> /general-uac-web-tomcat.log