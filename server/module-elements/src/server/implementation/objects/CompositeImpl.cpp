/*
 * (C) Copyright 2016 Kurento (http://kurento.org/)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#include <gst/gst.h>
#include "MediaPipeline.hpp"
#include <CompositeImplFactory.hpp>
#include "CompositeImpl.hpp"
#include <jsonrpc/JsonSerializer.hpp>
#include <KurentoException.hpp>
#include <gst/gst.h>

#define GST_CAT_DEFAULT kurento_composite_impl
GST_DEBUG_CATEGORY_STATIC (GST_CAT_DEFAULT);
#define GST_DEFAULT_NAME "KurentoCompositeImpl"

#define FACTORY_NAME "compositemixer"

#define WIDTH_PROPERTY "width"
#define HEIGHT_PROPERTY "height"
#define FRAMERATE_PROPERTY "framerate"

namespace kurento
{

CompositeImpl::CompositeImpl (const boost::property_tree::ptree &conf,
                              std::shared_ptr<MediaPipeline> mediaPipeline, int64_t width, int64_t height,
                              int64_t framerate) : HubImpl (conf,
                                    std::dynamic_pointer_cast<MediaObjectImpl> (mediaPipeline), FACTORY_NAME),
  width (width), height (height), framerate (framerate) 
{
    // Check if "width" exists in the config
    if (width != 0 || kurento::MediaObjectImpl::getConfigValue(&width, "width", conf)) {
        g_object_set(G_OBJECT(element), WIDTH_PROPERTY, width, NULL);
    }

    // Check if "height" exists in the config
    if (height != 0 || kurento::MediaObjectImpl::getConfigValue(&height, "height", conf)) {
        g_object_set(G_OBJECT(element), HEIGHT_PROPERTY, height, NULL);
    }

    // Check if "framerate" exists in the config
    if (framerate != 0 || kurento::MediaObjectImpl::getConfigValue(&framerate, "framerate", conf)) {
        g_object_set(G_OBJECT(element), FRAMERATE_PROPERTY, framerate, NULL);
    }
}

MediaObjectImpl *
CompositeImplFactory::createObject (const boost::property_tree::ptree &conf,
                     std::shared_ptr<MediaPipeline> mediaPipeline,
                     int64_t width = DEFAULT_WIDTH, int64_t height = DEFAULT_HEIGHT, int64_t framerate = DEFAULT_FRAMERATE) const
{
  return new CompositeImpl (conf, mediaPipeline, width, height, framerate);
}

CompositeImpl::StaticConstructor CompositeImpl::staticConstructor;

CompositeImpl::StaticConstructor::StaticConstructor()
{
  GST_DEBUG_CATEGORY_INIT (GST_CAT_DEFAULT, GST_DEFAULT_NAME, 0,
                           GST_DEFAULT_NAME);
}

} /* kurento */
