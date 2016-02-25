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
    CPJMODEL_ADD_NSNUMBER_PROPERTY(range, range_interface)
    CPJMODEL_ADD_NSSTRING_PROPERTY(value, value_interface)
CREATE_CPJMODEL_END
```
<p>在在CPJModels.m文件中</p>
```objective-c
CPJMODEL_IMPLEMENT(MSMAge);
```
<p>该类所对应的json</p>
```json
{
    "age": {
                "range": 5,
                "value": 26
            }
}
```
<p><code>CREATE_CPJMODEL_BEGAIN(MSMAge)</code>中的MSMAge为model的类名</p>
<p><code>CPJMODEL_ADD_NSNUMBER_PROPERTY(range, range)</code>中的CPJMODEL_ADD_NSNUMBER_PROPERTY代表为MSMAge类添加一个数字类型的属性。第一个参数range代表该property的名字，第二个参数rang_interface代表json字典中的key</p>
<ul>
<li><code>CPJMODEL_ADD_NSNUMBER_PROPERTY(property_name, key)</code>增加一个数字类型</li>
<li><code>CPJMODEL_ADD_NSSTRING_PROPERTY(property_name, key)</code>增加一个字符串类型</li>
<li><code>CPJMODEL_ADD_CPJMODEL_PROPERTY(class, property_name, key)</code>增加一个自定义类型。class为自定义类型的名称</li>
<li><code>CPJMODEL_ADD_NSARRAY_PROPERTY(class, property_name, key)</code>增加一个数组类型。class为数组中元素的类型</li>
</ul>
#####第二步将JSON字典转换为model
```objective-c
MSMAge *result = [[CPJJSONAdapter alloc] modelsOfClass:MSMAge.class fromJSON:responseDict];
// 使用result
//
result.range;
result.value;
```
<p>modelsOfClass参数MSMAge.class为需要转换的类型；fromJSON参数responseDict为需要转换的JSON字典。</p>
####第二种方式
<p>适用的情况：这个JSON字典非常大，但是只需要其中的某几个值的时候</p>
<p>还以上面的JSON为例子</p>
```objective-c
NSumber  *range = [[CPJJSONAdapter new] getValueWithPath:@"age.range" fromJSON:dic];
NSString *string = [[CPJJSONAdapter new] getValueWithPath:@"age.value" fromJSON:dic];
```
