//
//  Person.h
//  ObjectiveCpp
//
//  Created by Ivan Guajana on 15.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#ifndef __ObjectiveCpp__Person__
#define __ObjectiveCpp__Person__

#include <string>

class Person
{
public:
  std::string name;
  
  Person(std::string str);
  ~Person();
};

#endif /* defined(__ObjectiveCpp__Person__) */
