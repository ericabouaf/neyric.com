title: JSON Schema and inputEx
tags:
  - inputEx
  - javascript
  - json-schema
  - Persevere
id: 143
categories:
  - inputEx
  - Server-side javascript
date: 2009-01-26 16:04:20
---

Proposed by [Kris Zyp](http://www.sitepen.com/blog/author/kzyp/), JSON Schema takes the good ideas from XML Schema. From [http://json-schema.org/](http://json-schema.org/) :
> _JSON Schema is a specification for a JSON-based format for defining the structure of JSON data. JSON Schema provides a contract for what JSON data is required for a given application and how it can be modified, much like what XML Schema provides for XML. JSON Schema is intended to provide validation, documentation, and interaction control of JSON data._
There are numerous similarities between inputEx and JSON Schema. If you are not convinced, here is an example of a JSON schema:
> `{"description":"A person",> 
> "type":"object",`> 
> 
> ` "properties": {> 
> "name": {"type":"string"},> 
> "born" : {`> 
> 
> ` "type":["integer","string"],> 
> "minimum":1900,_> 
> _`` "maximum":2010,> 
> `> 
> 
> ` "format":"date-time", _> 
> _ "optional":true> 
> `` },> 
> "gender" : {"type":"string",> 
> "options":[`> 
> 
> ` {"value:"male","label":"Guy"},`> 
> 
> ` {"value":"female","label":"Gal"}]},``> 
> "address" : {"type":"object"``,> 
> "properties":{`> 
> 
> ` "street":{"type":"string"},> 
> "city":{"type":"string"},> 
> "state":{"type":"string"}> 
> }> 
> }> 
> `> 
> 
> ` }<code>> 
> `}</code>
inputEx users should be comfortable writing a form for this schema :
> {> 
> 
> type: "group",> 
> 
> fields: [> 
> 
> {type: "string", inputParams: {name: "name", required: true}},> 
> 
> {type: "date", inputParams: {name: "born"} },> 
> 
> {type: "select", inputParams: {name: "gender", selectOptions:["Guy", "Gal"], selectValues: ["male", "female"]}},> 
> 
> {type: "group", inputParams: {> 
> 
> name:"address",> 
> 
> fields: [> 
> 
> {type: "string", inputParams: {name: "street"}},> 
> 
> {type: "string", inputParams: {name: "city"}},> 
> 
> {type: "string", inputParams: {name: "state"}}> 
> 
> ]    }  }  ] }
The main difference is that the** JSON schema ontology is data-centric, wheras the inputEx JSON schema ontology is form-centric**, but as you can see, they are very similar.

Another similarity is the self-descriptive ability of JSON Schema and inputEx.[ JSON Schema has its own schema](http://code.google.com/p/jsonschema/downloads/detail?name=schemaForSchema.json&amp;can752&amp;q=), a schema for itself. inputEx has the same kind of self reference: the TypeField contains forms to describe the options of each field (you can see this at the end of [TypeField.js](http://javascript.neyric.com/inputex/doc/js_docs_out/TypeField.js.html)). This self-referencing property has very nice implications: it gives the opportunity to create **a form to build forms**, and that's exactly what the [inputEx Builder](http://javascript.neyric.com/inputex/inputExBuilder/inputExBuilder.html) is: a form which outputs inputEx JSON.

**inputEx implementation of JSON Schema**

In version 0.2.0, I added a (very) light implementation of a JSON Schema to inputEx JSON. Hopefully, Brad Clements saw the advantages of having automatic form generation from JSON schemas and took the prototype one (big) step forward by implementing [JSON referencing](http://www.json.com/2007/10/19/json-referencing-proposal-and-library/). We are now able to create atomic schemas and combine them in nested schemas.

At the current state, inputEx doesn't implement all the validation that can be described in JSON Schema, but we are on the way. On the other hand, inputEx has many options concerning the form interface, that are not necessary in JSON Schema, which focuses on data validation. Brad suggested an extension to JSON Schema by adding an "_inputex" property to type definition. It allows to set the additionnal interface options for inputEx within the schema.

Both of these features are demonstrated in [this example](http://javascript.neyric.com/inputex/examples/json-schema2.html) which is built from [this schema](http://javascript.neyric.com/inputex/examples/base-schema.js) (JSON schema with inputEx extension).

The last feature that we're missing is the extending capability ("extends":{"$ref":"person"}), but the implementation should be pretty straightforward.

**Round-trip: defining JSON-Schema through forms, and ****Persevere backend**

Up to now, we focused on converting JSON schemas to inputEx forms, but the other way is perfectly conceivable ! Leveraging the inputEx Builder, we would have a nice interface to **build JSON schemas and associated forms ****at the same time**. Combined** **with the [Persevere](http://www.persvr.org/) framework backend, we could provide a very nice administration interface, that let you edit models through the inputEx Builder, then edit the data through the generated inputEx forms. You could argue that some fields should not be visible in forms, but if you take a closer look at inputEx fields, two of them are perfect for this case: the [HiddenField](http://javascript.neyric.com/inputex/examples/hidden_field.html), which is not visible at all, or the [UneditableField](http://javascript.neyric.com/inputex/examples/uneditable_field.html) which lets you use a custom rendering method for an uneditable field.

I think this might end up in a more effective interface than the [current Persevere database explorer](http://www.persvr.org/explorer.html) because it creates the form interfaces at the same time, and make them reusable within your application.

A last idea, we could provide json-schemas for defining method parameters. inputEx could then automatically generate forms to call these methods (through JSON-RPC or locally).

Of course, if you're interested in the following developments, we urge you to contact us [through the forum](http://groups.google.com/group/inputex/).

Have fun !