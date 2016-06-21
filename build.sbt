name := """challenges"""

version := "1.0.0.%s".format((new java.text.SimpleDateFormat("yyyyMMdd.HHmmss")).format(new java.util.Date()))

scalaVersion := "2.11.0"

libraryDependencies ++= Seq(
  "org.scalatest" %% "scalatest" % "2.2.6",
  "ch.qos.logback" % "logback-classic" % "1.1.3"
)