${event.name}.cpp
/* Autogenerated with kurento-module-creator */

#include "${event.name}.hpp"
#include <jsonrpc/JsonSerializer.hpp>
<#list event.properties as property>
<#if module.remoteClasses?seq_contains(property.type.type) ||
  module.complexTypes?seq_contains(property.type.type) ||
  module.events?seq_contains(property.type.type)>
#include "${property.type.name}.hpp"
</#if>
</#list>
#include <ctime>
#include <string>

<#list module.code.implementation["cppNamespace"]?split("::") as namespace>
namespace ${namespace}
{
</#list>
<#if event.name = "RaiseBase">
static
std::string getCurrentTime ()
{
  time_t timer;
  time(&timer);
  return std::to_string ((int)(timer));
}

${event.name}::${event.name} (<#rt>
  <#lt><#assign first = true><#rt>
  <#lt><#list event.properties as property><#rt>
  <#lt><#if property.name != "timestamp" && property.name != "tags"><#rt>
    <#lt><#if !property.optional><#rt>
      <#lt><#if !first>, </#if><#rt>
      <#lt><#assign first = false><#rt>
      <#lt>${getCppObjectType(property.type)}${property.name}<#rt>
    <#lt></#if><#rt>
  </#if><#rt>
  <#lt></#list><#rt>)
  {
  <#list event.properties as property><#rt>
    <#lt><#if property.name != "timestamp" && property.name != "tags"><#rt>
      <#lt><#if !property.optional><#rt>
  this->${property.name} = ${property.name};
      </#if><#rt>
    </#if><#rt>
  <#lt></#list>
  this->setTimestamp (getCurrentTime());
  if (source != nullptr) {
    if (source->getSendTagsInEvents ()) {
      this->setTags (source->getTags ());
    }
  }
}
</#if>

void
${event.name}::Serialize (JsonSerializer &s)
{
<#if event.extends??>
  ${event.extends.name}::Serialize (s);

</#if>
<#list event.properties as property>
  s.SerializeNVP (${property.name});
</#list>
}

<#list module.code.implementation["cppNamespace"]?split("::")?reverse as namespace>
} /* ${namespace} */
</#list>

namespace kurento
{

void Serialize (std::shared_ptr<${module.code.implementation["cppNamespace"]}::${event.name}> &event, JsonSerializer &s)
{
  if (!s.IsWriter && !event) {
    event.reset (new ${module.code.implementation["cppNamespace"]}::${event.name}() );
  }

  if (event) {
    event->Serialize (s);
  }
}

} /* kurento */