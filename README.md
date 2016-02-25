# CPJJSONAdapter
<p>CPJJSONAdapter能够将JSON解析后的字典转换为对象</p>
#How to Use
###部署<p>将<code>CPJModelGenerator</code>文件夹下的文件拷贝到工程目录下。</p>
![文件夹示例图](https://github.com/zhaishuai/CPJJSONAdapter/blob/master/document.png)
###传统做法出现的问题
<p>对JSON字典的使用通常做法都是直接使用，这样看起来是比较简单易理解。如：</p>
```objcetive-c
[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"attribute"] objectForKey:@"age"] objectForKey:@"value"]
```
<p>这样写的坏处是易出错如objectAtIndex:0，写起来还费劲别人看起来也费尽。如果哪天服务端修改了一个字段的名字如face改为man_face的话，那还得找到以上的这段代码所在的位置，然后将face改为man_face。如果工程中好多地方都需要使用这个json字典的话，那么恭喜你中奖了你需要挨个把他们找到并且修改他们。如果在工程中需要将json存储起来的，话直接采用以上方式也是极为不便利的。</p>
###CPJJSONAdapter的使用方式
<p>CPJJSONAdapter的出现就是为了解决上述问题，CPJJSONAdapter有两种使用方式：</p>
![CPJJSONAdapter使用方式](https://github.com/zhaishuai/CPJJSONAdapter/blob/master/mind.png)
####第一种方式
<p>适用的情况：程序中需要使用某个json字典中的大部分值</p>

#####第一步创建Model类
<p>在CPJModels.h文件中(CPJModels只是一个示例，可以自行更改其名称)声明model其代码如下所示：</p>
```objective-c
CREATE_CPJMODEL_BEGAIN(MSMAge)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(range, range)
    CPJMODEL_ADD_NSSTRING_PROPERTY(value, value)
CREATE_CPJMODEL_END
```
<p><code>CREATE_CPJMODEL_BEGAIN(MSMAge)</code>中的MSMAge为model的类名</p>
<p><code>CPJMODEL_ADD_NSNUMBER_PROPERTY(range, range)</code>中的</p>
