#Step 1: Prop
in system/build.prop:
 + add persist.sys.kaorios=kousei
------------------------
#Step 2: framework
in system/framework/framework.jar
import class.dex
search and replace method:
 #2.1 class: 
