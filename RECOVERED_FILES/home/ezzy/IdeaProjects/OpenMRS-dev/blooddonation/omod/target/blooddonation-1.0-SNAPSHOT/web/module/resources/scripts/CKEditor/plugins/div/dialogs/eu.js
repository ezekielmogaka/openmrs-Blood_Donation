<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>

	<parent>
		<groupId>org.openmrs.module</groupId>
		<artifactId>blooddonationmanager</artifactId>
		<version>1.0-SNAPSHOT</version>
	</parent>

	<artifactId>blooddonationmanager-omod</artifactId>
	<packaging>jar</packaging>
	<name>BloodDonationManager Module OMOD</name>
	<description>OMOD project for BloodDonationManager</description>

	<dependencies>

		<!-- 
		Add other dependencies from parent's pom: 
		<dependency> 
			<groupId>org.other.library</groupId> 
			<artifactId>library-name</artifactId> 
		</dependency> 
		-->
		
		<!-- Begin OpenMRS modules -->
		
		<dependency>
			<groupId>${project.parent.groupId}</groupId>
			<artifactId>${project.parent.artifactId}-api</artifactId>
			<version>${project.parent.version}</version>
		</dependency>
		
				
		<!-- End OpenMRS modules -->
		

		<!-- Begin OpenMRS core -->

		<dependency>
			<groupId>org.openmrs.api</groupId>
			<artifactId>openmrs-api</artifactId>
			<type>jar</type>
		</dependency>

		<dependency>
			<groupId>org.openmrs.web</groupId>
			<artifactId>openmrs-web</artifactId>
			<type>jar</type>
		</dependency>
		
		<dependency>
			<groupId>org.openmrs.api</groupId>
			<artifactId>openmrs-api</artifactId>
			<type>test-jar</type>
			<scope>test</scope>
		</dependency>

		<dependency>
			<groupId>org.openmrs.web</groupId>
			<artifactId>openmrs-web</artifactId>
			<type>test-jar</type>
			<scope>test</scope>
		</dependency>

		<dependency>
			<groupId>org.openmrs.test</groupId>
			<artifactId>openmrs-test</artifactId>
			<type>pom</type>
			<scope>test</scope>
		</dependency>
		
		<!-- End OpenMRS core -->

	</dependencies>

	<build>
		<finalName>${project.parent.artifactId}-${project.parent.version}</finalName>
		<resources>
			<resource>
				<directory>src/main/resources</directory>
				<filtering>true</filtering>
			</resource>
			<resource>
				<directory>src/main/webapp</directory>
				<filtering>false</filtering>
				<excludes>
					<exclude>resources</exclude>
				</excludes>
				<targetPath>web/module</targetPath>
			</resource>
			<resource>
				<directory>src/main/webapp</directory>
				<filtering>false</filtering>
				<includes>
					<include>resources</include>
				</includes>
				<targetPath>web/module</targetPath>
			</resource>
		</resources>

		<testResources>
			<testResource>
				<directory>src/test/resources</directory>
				<filtering>true</filtering>
			</testResource>
		</testResources>

		<pluginManagement>
			<plugins>
				<plugin>
					<artifactId>maven-resources-plugin</artifactId>
					<configuration>
						<includeEmptyDirs>true</includeEmptyDirs>
					</configuration>
				</plugin>
				<!--This plugin's configuration is used to store Eclipse m2e settings 
					only. It has no influence on the Maven build itself. -->
				<plugin>
					<groupId>org.eclipse.m2e</groupId>
					<artifactId>lifecycle-mapping</artifactId>
					<version>1.0.0</version>
					<configuration>
						<lifecycleMappingMetadata>
							<pluginExecutions>
								<pluginExecution>
									<pluginExecutionFilter>
										<groupId>org.openmrs.maven.plugins</groupId>
										<artifactId>maven-openmrs-plugin</artifactId>
										<versionRange>[1.0.1,)</versionRange>
										<goals>
											<goal>initialize-module</goal>
										</goals>
									</pluginExecutionFilter>
									<action>
										<ignore></ignore>
									</action>
								</pluginExecution>
								<pluginExecution>
									<pluginExecutionFilter>
										<groupId>org.apache.maven.plugins</groupId>
										<artifactId>maven-dependency-plugin</artifactId>
										<versionRange>[2.4,)</versionRange>
										<goals>
											<goal>unpack-dependencies</goal>
										</goals>
									</pluginExecutionFilter>
									<action>
										<ignore></ignore>
									</action>
								</pluginExecution>
							</pluginExecutions>
						</lifecycleMappingMetadata>
					</configuration>
				</plugin>
			</plugins>
		</pluginManagement>

		<plugins>
			<plugin>
				<groupId>org.openmrs.maven.plugins</groupId>
				<artifactId>maven-openmrs-plugin</artifactId>
				<extensions>true</extensions>
				<executions>
					<execution>
						<id>init</id>
						<phase>initialize</phase>
						<goals>
							<goal>initialize-module</goal>
						</goals>
					</execution>
					<execution>
						<id>pack</id>
						<phase>package</phase>
						<goals>
							<goal>package-module</goal>
						</goals>
					</execution>
				</executions>
			</plugin>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-dependency-plugin</artifactId>
				<executions>
					<execution>
						<id>Expand moduleApplicationContext and messages</id>
						<goals>
							<goal>unpack-dependencies</goal>
						</goals>
						<phase>generate-resources</phase>
						<configuration>
							<includeGroupIds>${project.parent.groupId}</includeGroupIds>
							<includeArtifactIds>${project.parent.artifactId}-api</includeArtifactIds>
							<excludeTransitive>true</excludeTransitive>
							<includes>**/*</includes>
							<outputDirectory>${project.build.directory}/classes</outputDirectory>
						</configuration>
					</execution>
				</executions>
			</plugin>
		</plugins>
	</build>

</project>
