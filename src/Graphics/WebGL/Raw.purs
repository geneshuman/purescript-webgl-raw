module Graphics.WebGL.Raw
( activeTexture
, attachShader
, bindAttribLocation
, bindBuffer
, bindFramebuffer
, bindRenderbuffer
, bindTexture
, blendColor
, blendEquation
, blendEquationSeparate
, blendFunc
, blendFuncSeparate
, bufferData
, bufferData_
, bufferSubData
, checkFramebufferStatus
, clear
, clearColor
, clearDepth
, clearStencil
, colorMask
, compileShader
, compressedTexImage2D
, compressedTexSubImage2D
, copyTexImage2D
, copyTexSubImage2D
, createBuffer
, createFramebuffer
, createProgram
, createRenderbuffer
, createShader
, createTexture
, cullFace
, deleteBuffer
, deleteFramebuffer
, deleteProgram
, deleteRenderbuffer
, deleteShader
, deleteTexture
, depthFunc
, depthMask
, depthRange
, detachShader
, disable
, disableVertexAttribArray
, drawArrays
, drawElements
, enable
, enableVertexAttribArray
, finish
, flush
, framebufferRenderbuffer
, framebufferTexture2D
, frontFace
, generateMipmap
, getActiveAttrib
, getActiveUniform
, getAttachedShaders
, getAttribLocation
, getBufferParameter
, getContextAttributes
, getError
, getExtension
, getFramebufferAttachmentParameter
, getParameter
, getProgramInfoLog
, getProgramParameter
, getRenderbufferParameter
, getShaderInfoLog
, getShaderParameter
, getShaderPrecisionFormat
, getShaderSource
, getSupportedExtensions
, getTexParameter
, getUniform
, getUniformLocation
, getVertexAttrib
, getVertexAttribOffset
, hint
, isBuffer
, isContextLost
, isEnabled
, isFramebuffer
, isProgram
, isRenderbuffer
, isShader
, isTexture
, lineWidth
, linkProgram
, pixelStorei
, polygonOffset
, readPixels
, renderbufferStorage
, sampleCoverage
, scissor
, shaderSource
, stencilFunc
, stencilFuncSeparate
, stencilMask
, stencilMaskSeparate
, stencilOp
, stencilOpSeparate
, texImage2D
, texImage2D_
, texParameterf
, texParameteri
, texSubImage2D
, texSubImage2D_
, uniform1f
, uniform1fv
, uniform1fv_
, uniform1i
, uniform1iv
, uniform1iv_
, uniform2f
, uniform2fv
, uniform2fv_
, uniform2i
, uniform2iv
, uniform2iv_
, uniform3f
, uniform3fv
, uniform3fv_
, uniform3i
, uniform3iv
, uniform3iv_
, uniform4f
, uniform4fv
, uniform4fv_
, uniform4i
, uniform4iv
, uniform4iv_
, uniformMatrix2fv
, uniformMatrix2fv_
, uniformMatrix3fv
, uniformMatrix3fv_
, uniformMatrix4fv
, uniformMatrix4fv_
, useProgram
, validateProgram
, vertexAttrib1f
, vertexAttrib1fv
, vertexAttrib1fv_
, vertexAttrib2f
, vertexAttrib2fv
, vertexAttrib2fv_
, vertexAttrib3f
, vertexAttrib3fv
, vertexAttrib3fv_
, vertexAttrib4f
, vertexAttrib4fv
, vertexAttrib4fv_
, vertexAttribPointer
, viewport
) where

import Effect (Effect)
import Data.ArrayBuffer.Types (Float32Array, Int32Array)
import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn8, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn8, runFn9)
import Data.Maybe (Maybe)
import Graphics.WebGL.Raw.Types (ArrayBufferView, BufferDataSource, DOMString, GLbitfield, GLboolean, GLclampf, GLenum, GLfloat, GLint, GLintptr, GLsizei, GLsizeiptr, GLuint, TexImageSource, WebGLActiveInfo, WebGLBuffer, WebGLContext, WebGLContextAttributes, WebGLFramebuffer, WebGLProgram, WebGLRenderbuffer, WebGLShader, WebGLShaderPrecisionFormat, WebGLTexture, WebGLUniformLocation)
import Graphics.WebGL.Raw.Util (nullAsEmpty, toMaybe)
import Prelude (Unit, pure, (>>=), (>>>))

foreign import activeTextureImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

activeTexture :: forall eff. WebGLContext -> GLenum -> Effect Unit
activeTexture webgl texture = runFn2 activeTextureImpl webgl texture

foreign import attachShaderImpl :: forall eff. Fn3 WebGLContext WebGLProgram WebGLShader (Effect Unit)

attachShader :: forall eff. WebGLContext -> WebGLProgram -> WebGLShader -> Effect Unit
attachShader webgl program shader = runFn3 attachShaderImpl webgl program shader

foreign import bindAttribLocationImpl :: forall eff. Fn4 WebGLContext WebGLProgram GLuint DOMString (Effect Unit)

bindAttribLocation :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> DOMString -> Effect Unit
bindAttribLocation webgl program index name = runFn4 bindAttribLocationImpl webgl program index name

foreign import bindBufferImpl :: forall eff. Fn3 WebGLContext GLenum WebGLBuffer (Effect Unit)

bindBuffer :: forall eff. WebGLContext -> GLenum -> WebGLBuffer -> Effect Unit
bindBuffer webgl target buffer = runFn3 bindBufferImpl webgl target buffer

foreign import bindFramebufferImpl :: forall eff. Fn3 WebGLContext GLenum WebGLFramebuffer (Effect Unit)

bindFramebuffer :: forall eff. WebGLContext -> GLenum -> WebGLFramebuffer -> Effect Unit
bindFramebuffer webgl target framebuffer = runFn3 bindFramebufferImpl webgl target framebuffer

foreign import bindRenderbufferImpl :: forall eff. Fn3 WebGLContext GLenum WebGLRenderbuffer (Effect Unit)

bindRenderbuffer :: forall eff. WebGLContext -> GLenum -> WebGLRenderbuffer -> Effect Unit
bindRenderbuffer webgl target renderbuffer = runFn3 bindRenderbufferImpl webgl target renderbuffer

foreign import bindTextureImpl :: forall eff. Fn3 WebGLContext GLenum WebGLTexture (Effect Unit)

bindTexture :: forall eff. WebGLContext -> GLenum -> WebGLTexture -> Effect Unit
bindTexture webgl target texture = runFn3 bindTextureImpl webgl target texture

foreign import blendColorImpl :: forall eff. Fn5 WebGLContext GLclampf GLclampf GLclampf GLclampf (Effect Unit)

blendColor :: forall eff. WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Effect Unit
blendColor webgl red green blue alpha = runFn5 blendColorImpl webgl red green blue alpha

foreign import blendEquationImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

blendEquation :: forall eff. WebGLContext -> GLenum -> Effect Unit
blendEquation webgl mode = runFn2 blendEquationImpl webgl mode

foreign import blendEquationSeparateImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Effect Unit)

blendEquationSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> Effect Unit
blendEquationSeparate webgl modeRGB modeAlpha = runFn3 blendEquationSeparateImpl webgl modeRGB modeAlpha

foreign import blendFuncImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Effect Unit)

blendFunc :: forall eff. WebGLContext -> GLenum -> GLenum -> Effect Unit
blendFunc webgl sfactor dfactor = runFn3 blendFuncImpl webgl sfactor dfactor

foreign import blendFuncSeparateImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLenum GLenum (Effect Unit)

blendFuncSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Effect Unit
blendFuncSeparate webgl srcRGB dstRGB srcAlpha dstAlpha = runFn5 blendFuncSeparateImpl webgl srcRGB dstRGB srcAlpha dstAlpha

foreign import bufferDataImpl :: forall eff. Fn4 WebGLContext GLenum BufferDataSource GLenum (Effect Unit)

bufferData :: forall eff. WebGLContext -> GLenum -> BufferDataSource -> GLenum -> Effect Unit
bufferData webgl target data' usage = runFn4 bufferDataImpl webgl target data' usage

foreign import bufferData_Impl :: forall eff. Fn4 WebGLContext GLenum GLsizeiptr GLenum (Effect Unit)

bufferData_ :: forall eff. WebGLContext -> GLenum -> GLsizeiptr -> GLenum -> Effect Unit
bufferData_ webgl target size usage = runFn4 bufferData_Impl webgl target size usage

foreign import bufferSubDataImpl :: forall eff. Fn4 WebGLContext GLenum GLintptr BufferDataSource (Effect Unit)

bufferSubData :: forall eff. WebGLContext -> GLenum -> GLintptr -> BufferDataSource -> Effect Unit
bufferSubData webgl target offset data' = runFn4 bufferSubDataImpl webgl target offset data'

foreign import checkFramebufferStatusImpl :: forall eff. Fn2 WebGLContext GLenum (Effect GLenum)

checkFramebufferStatus :: forall eff. WebGLContext -> GLenum -> Effect GLenum
checkFramebufferStatus webgl target = runFn2 checkFramebufferStatusImpl webgl target

foreign import clearImpl :: forall eff. Fn2 WebGLContext GLbitfield (Effect Unit)

clear :: forall eff. WebGLContext -> GLbitfield -> Effect Unit
clear webgl mask = runFn2 clearImpl webgl mask

foreign import clearColorImpl :: forall eff. Fn5 WebGLContext GLclampf GLclampf GLclampf GLclampf (Effect Unit)

clearColor :: forall eff. WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Effect Unit
clearColor webgl red green blue alpha = runFn5 clearColorImpl webgl red green blue alpha

foreign import clearDepthImpl :: forall eff. Fn2 WebGLContext GLclampf (Effect Unit)

clearDepth :: forall eff. WebGLContext -> GLclampf -> Effect Unit
clearDepth webgl depth = runFn2 clearDepthImpl webgl depth

foreign import clearStencilImpl :: forall eff. Fn2 WebGLContext GLint (Effect Unit)

clearStencil :: forall eff. WebGLContext -> GLint -> Effect Unit
clearStencil webgl s = runFn2 clearStencilImpl webgl s

foreign import colorMaskImpl :: forall eff. Fn5 WebGLContext GLboolean GLboolean GLboolean GLboolean (Effect Unit)

colorMask :: forall eff. WebGLContext -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> Effect Unit
colorMask webgl red green blue alpha = runFn5 colorMaskImpl webgl red green blue alpha

foreign import compileShaderImpl :: forall eff. Fn2 WebGLContext WebGLShader (Effect Unit)

compileShader :: forall eff. WebGLContext -> WebGLShader -> Effect Unit
compileShader webgl shader = runFn2 compileShaderImpl webgl shader

foreign import compressedTexImage2DImpl :: forall eff. Fn8 WebGLContext GLenum GLint GLenum GLsizei GLsizei GLint ArrayBufferView (Effect Unit)

compressedTexImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> ArrayBufferView -> Effect Unit
compressedTexImage2D webgl target level internalformat width height border data' = runFn8 compressedTexImage2DImpl webgl target level internalformat width height border data'

foreign import compressedTexSubImage2DImpl :: forall eff. Fn9 WebGLContext GLenum GLint GLint GLint GLsizei GLsizei GLenum ArrayBufferView (Effect Unit)

compressedTexSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> ArrayBufferView -> Effect Unit
compressedTexSubImage2D webgl target level xoffset yoffset width height format data' = runFn9 compressedTexSubImage2DImpl webgl target level xoffset yoffset width height format data'

foreign import copyTexImage2DImpl :: forall eff. Fn9 WebGLContext GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint (Effect Unit)

copyTexImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> Effect Unit
copyTexImage2D webgl target level internalformat x y width height border = runFn9 copyTexImage2DImpl webgl target level internalformat x y width height border

foreign import copyTexSubImage2DImpl :: forall eff. Fn9 WebGLContext GLenum GLint GLint GLint GLint GLint GLsizei GLsizei (Effect Unit)

copyTexSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> Effect Unit
copyTexSubImage2D webgl target level xoffset yoffset x y width height = runFn9 copyTexSubImage2DImpl webgl target level xoffset yoffset x y width height

foreign import createBufferImpl :: forall eff. Fn1 WebGLContext (Effect WebGLBuffer)

createBuffer :: forall eff. WebGLContext -> Effect (Maybe WebGLBuffer)
createBuffer webgl = runFn1 createBufferImpl webgl >>= toMaybe >>> pure

foreign import createFramebufferImpl :: forall eff. Fn1 WebGLContext (Effect WebGLFramebuffer)

createFramebuffer :: forall eff. WebGLContext -> Effect (Maybe WebGLFramebuffer)
createFramebuffer webgl = runFn1 createFramebufferImpl webgl >>= toMaybe >>> pure

foreign import createProgramImpl :: forall eff. Fn1 WebGLContext (Effect WebGLProgram)

createProgram :: forall eff. WebGLContext -> Effect (Maybe WebGLProgram)
createProgram webgl = runFn1 createProgramImpl webgl >>= toMaybe >>> pure

foreign import createRenderbufferImpl :: forall eff. Fn1 WebGLContext (Effect WebGLRenderbuffer)

createRenderbuffer :: forall eff. WebGLContext -> Effect (Maybe WebGLRenderbuffer)
createRenderbuffer webgl = runFn1 createRenderbufferImpl webgl >>= toMaybe >>> pure

foreign import createShaderImpl :: forall eff. Fn2 WebGLContext GLenum (Effect WebGLShader)

createShader :: forall eff. WebGLContext -> GLenum -> Effect (Maybe WebGLShader)
createShader webgl type' = runFn2 createShaderImpl webgl type' >>= toMaybe >>> pure

foreign import createTextureImpl :: forall eff. Fn1 WebGLContext (Effect WebGLTexture)

createTexture :: forall eff. WebGLContext -> Effect (Maybe WebGLTexture)
createTexture webgl = runFn1 createTextureImpl webgl >>= toMaybe >>> pure

foreign import cullFaceImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

cullFace :: forall eff. WebGLContext -> GLenum -> Effect Unit
cullFace webgl mode = runFn2 cullFaceImpl webgl mode

foreign import deleteBufferImpl :: forall eff. Fn2 WebGLContext WebGLBuffer (Effect Unit)

deleteBuffer :: forall eff. WebGLContext -> WebGLBuffer -> Effect Unit
deleteBuffer webgl buffer = runFn2 deleteBufferImpl webgl buffer

foreign import deleteFramebufferImpl :: forall eff. Fn2 WebGLContext WebGLFramebuffer (Effect Unit)

deleteFramebuffer :: forall eff. WebGLContext -> WebGLFramebuffer -> Effect Unit
deleteFramebuffer webgl framebuffer = runFn2 deleteFramebufferImpl webgl framebuffer

foreign import deleteProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Effect Unit)

deleteProgram :: forall eff. WebGLContext -> WebGLProgram -> Effect Unit
deleteProgram webgl program = runFn2 deleteProgramImpl webgl program

foreign import deleteRenderbufferImpl :: forall eff. Fn2 WebGLContext WebGLRenderbuffer (Effect Unit)

deleteRenderbuffer :: forall eff. WebGLContext -> WebGLRenderbuffer -> Effect Unit
deleteRenderbuffer webgl renderbuffer = runFn2 deleteRenderbufferImpl webgl renderbuffer

foreign import deleteShaderImpl :: forall eff. Fn2 WebGLContext WebGLShader (Effect Unit)

deleteShader :: forall eff. WebGLContext -> WebGLShader -> Effect Unit
deleteShader webgl shader = runFn2 deleteShaderImpl webgl shader

foreign import deleteTextureImpl :: forall eff. Fn2 WebGLContext WebGLTexture (Effect Unit)

deleteTexture :: forall eff. WebGLContext -> WebGLTexture -> Effect Unit
deleteTexture webgl texture = runFn2 deleteTextureImpl webgl texture

foreign import depthFuncImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

depthFunc :: forall eff. WebGLContext -> GLenum -> Effect Unit
depthFunc webgl func = runFn2 depthFuncImpl webgl func

foreign import depthMaskImpl :: forall eff. Fn2 WebGLContext GLboolean (Effect Unit)

depthMask :: forall eff. WebGLContext -> GLboolean -> Effect Unit
depthMask webgl flag = runFn2 depthMaskImpl webgl flag

foreign import depthRangeImpl :: forall eff. Fn3 WebGLContext GLclampf GLclampf (Effect Unit)

depthRange :: forall eff. WebGLContext -> GLclampf -> GLclampf -> Effect Unit
depthRange webgl zNear zFar = runFn3 depthRangeImpl webgl zNear zFar

foreign import detachShaderImpl :: forall eff. Fn3 WebGLContext WebGLProgram WebGLShader (Effect Unit)

detachShader :: forall eff. WebGLContext -> WebGLProgram -> WebGLShader -> Effect Unit
detachShader webgl program shader = runFn3 detachShaderImpl webgl program shader

foreign import disableImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

disable :: forall eff. WebGLContext -> GLenum -> Effect Unit
disable webgl cap = runFn2 disableImpl webgl cap

foreign import disableVertexAttribArrayImpl :: forall eff. Fn2 WebGLContext GLuint (Effect Unit)

disableVertexAttribArray :: forall eff. WebGLContext -> GLuint -> Effect Unit
disableVertexAttribArray webgl index = runFn2 disableVertexAttribArrayImpl webgl index

foreign import drawArraysImpl :: forall eff. Fn4 WebGLContext GLenum GLint GLsizei (Effect Unit)

drawArrays :: forall eff. WebGLContext -> GLenum -> GLint -> GLsizei -> Effect Unit
drawArrays webgl mode first count = runFn4 drawArraysImpl webgl mode first count

foreign import drawElementsImpl :: forall eff. Fn5 WebGLContext GLenum GLsizei GLenum GLintptr (Effect Unit)

drawElements :: forall eff. WebGLContext -> GLenum -> GLsizei -> GLenum -> GLintptr -> Effect Unit
drawElements webgl mode count type' offset = runFn5 drawElementsImpl webgl mode count type' offset

foreign import enableImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

enable :: forall eff. WebGLContext -> GLenum -> Effect Unit
enable webgl cap = runFn2 enableImpl webgl cap

foreign import enableVertexAttribArrayImpl :: forall eff. Fn2 WebGLContext GLuint (Effect Unit)

enableVertexAttribArray :: forall eff. WebGLContext -> GLuint -> Effect Unit
enableVertexAttribArray webgl index = runFn2 enableVertexAttribArrayImpl webgl index

foreign import finishImpl :: forall eff. Fn1 WebGLContext (Effect Unit)

finish :: forall eff. WebGLContext -> Effect Unit
finish webgl = runFn1 finishImpl webgl

foreign import flushImpl :: forall eff. Fn1 WebGLContext (Effect Unit)

flush :: forall eff. WebGLContext -> Effect Unit
flush webgl = runFn1 flushImpl webgl

foreign import framebufferRenderbufferImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLenum WebGLRenderbuffer (Effect Unit)

framebufferRenderbuffer :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLRenderbuffer -> Effect Unit
framebufferRenderbuffer webgl target attachment renderbuffertarget renderbuffer = runFn5 framebufferRenderbufferImpl webgl target attachment renderbuffertarget renderbuffer

foreign import framebufferTexture2DImpl :: forall eff. Fn6 WebGLContext GLenum GLenum GLenum WebGLTexture GLint (Effect Unit)

framebufferTexture2D :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLTexture -> GLint -> Effect Unit
framebufferTexture2D webgl target attachment textarget texture level = runFn6 framebufferTexture2DImpl webgl target attachment textarget texture level

foreign import frontFaceImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

frontFace :: forall eff. WebGLContext -> GLenum -> Effect Unit
frontFace webgl mode = runFn2 frontFaceImpl webgl mode

foreign import generateMipmapImpl :: forall eff. Fn2 WebGLContext GLenum (Effect Unit)

generateMipmap :: forall eff. WebGLContext -> GLenum -> Effect Unit
generateMipmap webgl target = runFn2 generateMipmapImpl webgl target

foreign import getActiveAttribImpl :: forall eff. Fn3 WebGLContext WebGLProgram GLuint (Effect WebGLActiveInfo)

getActiveAttrib :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> Effect (Maybe WebGLActiveInfo)
getActiveAttrib webgl program index = runFn3 getActiveAttribImpl webgl program index >>= toMaybe >>> pure

foreign import getActiveUniformImpl :: forall eff. Fn3 WebGLContext WebGLProgram GLuint (Effect WebGLActiveInfo)

getActiveUniform :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> Effect (Maybe WebGLActiveInfo)
getActiveUniform webgl program index = runFn3 getActiveUniformImpl webgl program index >>= toMaybe >>> pure

foreign import getAttachedShadersImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Effect (Array WebGLShader))

getAttachedShaders :: forall eff. WebGLContext -> WebGLProgram -> Effect (Array WebGLShader)
getAttachedShaders webgl program = runFn2 getAttachedShadersImpl webgl program >>= nullAsEmpty >>> pure

foreign import getAttribLocationImpl :: forall eff. Fn3 WebGLContext WebGLProgram DOMString (Effect GLint)

getAttribLocation :: forall eff. WebGLContext -> WebGLProgram -> DOMString -> Effect GLint
getAttribLocation webgl program name = runFn3 getAttribLocationImpl webgl program name

foreign import getBufferParameterImpl :: forall eff a. Fn3 WebGLContext GLenum GLenum (Effect a)

getBufferParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Effect (Maybe a)
getBufferParameter webgl target pname = runFn3 getBufferParameterImpl webgl target pname >>= toMaybe >>> pure

foreign import getContextAttributesImpl :: forall eff. Fn1 WebGLContext (Effect WebGLContextAttributes)

getContextAttributes :: forall eff. WebGLContext -> Effect (Maybe WebGLContextAttributes)
getContextAttributes webgl = runFn1 getContextAttributesImpl webgl >>= toMaybe >>> pure

foreign import getErrorImpl :: forall eff. Fn1 WebGLContext (Effect GLenum)

getError :: forall eff. WebGLContext -> Effect GLenum
getError webgl = runFn1 getErrorImpl webgl

foreign import getExtensionImpl :: forall eff a. Fn2 WebGLContext DOMString (Effect a)

getExtension :: forall eff a. WebGLContext -> DOMString -> Effect (Maybe a)
getExtension webgl name = runFn2 getExtensionImpl webgl name >>= toMaybe >>> pure

foreign import getFramebufferAttachmentParameterImpl :: forall eff a. Fn4 WebGLContext GLenum GLenum GLenum (Effect a)

getFramebufferAttachmentParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> GLenum -> Effect (Maybe a)
getFramebufferAttachmentParameter webgl target attachment pname = runFn4 getFramebufferAttachmentParameterImpl webgl target attachment pname >>= toMaybe >>> pure

foreign import getParameterImpl :: forall eff a. Fn2 WebGLContext GLenum (Effect a)

getParameter :: forall eff a. WebGLContext -> GLenum -> Effect (Maybe a)
getParameter webgl pname = runFn2 getParameterImpl webgl pname >>= toMaybe >>> pure

foreign import getProgramInfoLogImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Effect DOMString)

getProgramInfoLog :: forall eff. WebGLContext -> WebGLProgram -> Effect (Maybe DOMString)
getProgramInfoLog webgl program = runFn2 getProgramInfoLogImpl webgl program >>= toMaybe >>> pure

foreign import getProgramParameterImpl :: forall eff a. Fn3 WebGLContext WebGLProgram GLenum (Effect a)

getProgramParameter :: forall eff a. WebGLContext -> WebGLProgram -> GLenum -> Effect (Maybe a)
getProgramParameter webgl program pname = runFn3 getProgramParameterImpl webgl program pname >>= toMaybe >>> pure

foreign import getRenderbufferParameterImpl :: forall eff a. Fn3 WebGLContext GLenum GLenum (Effect a)

getRenderbufferParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Effect (Maybe a)
getRenderbufferParameter webgl target pname = runFn3 getRenderbufferParameterImpl webgl target pname >>= toMaybe >>> pure

foreign import getShaderInfoLogImpl :: forall eff. Fn2 WebGLContext WebGLShader (Effect DOMString)

getShaderInfoLog :: forall eff. WebGLContext -> WebGLShader -> Effect (Maybe DOMString)
getShaderInfoLog webgl shader = runFn2 getShaderInfoLogImpl webgl shader >>= toMaybe >>> pure

foreign import getShaderParameterImpl :: forall eff a. Fn3 WebGLContext WebGLShader GLenum (Effect a)

getShaderParameter :: forall eff a. WebGLContext -> WebGLShader -> GLenum -> Effect (Maybe a)
getShaderParameter webgl shader pname = runFn3 getShaderParameterImpl webgl shader pname >>= toMaybe >>> pure

foreign import getShaderPrecisionFormatImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Effect WebGLShaderPrecisionFormat)

getShaderPrecisionFormat :: forall eff. WebGLContext -> GLenum -> GLenum -> Effect (Maybe WebGLShaderPrecisionFormat)
getShaderPrecisionFormat webgl shadertype precisiontype = runFn3 getShaderPrecisionFormatImpl webgl shadertype precisiontype >>= toMaybe >>> pure

foreign import getShaderSourceImpl :: forall eff. Fn2 WebGLContext WebGLShader (Effect DOMString)

getShaderSource :: forall eff. WebGLContext -> WebGLShader -> Effect (Maybe DOMString)
getShaderSource webgl shader = runFn2 getShaderSourceImpl webgl shader >>= toMaybe >>> pure

foreign import getSupportedExtensionsImpl :: forall eff. Fn1 WebGLContext (Effect (Array DOMString))

getSupportedExtensions :: forall eff. WebGLContext -> Effect (Array DOMString)
getSupportedExtensions webgl = runFn1 getSupportedExtensionsImpl webgl >>= nullAsEmpty >>> pure

foreign import getTexParameterImpl :: forall eff a. Fn3 WebGLContext GLenum GLenum (Effect a)

getTexParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Effect (Maybe a)
getTexParameter webgl target pname = runFn3 getTexParameterImpl webgl target pname >>= toMaybe >>> pure

foreign import getUniformImpl :: forall eff a. Fn3 WebGLContext WebGLProgram WebGLUniformLocation (Effect a)

getUniform :: forall eff a. WebGLContext -> WebGLProgram -> WebGLUniformLocation -> Effect (Maybe a)
getUniform webgl program location = runFn3 getUniformImpl webgl program location >>= toMaybe >>> pure

foreign import getUniformLocationImpl :: forall eff. Fn3 WebGLContext WebGLProgram DOMString (Effect WebGLUniformLocation)

getUniformLocation :: forall eff. WebGLContext -> WebGLProgram -> DOMString -> Effect (Maybe WebGLUniformLocation)
getUniformLocation webgl program name = runFn3 getUniformLocationImpl webgl program name >>= toMaybe >>> pure

foreign import getVertexAttribImpl :: forall eff a. Fn3 WebGLContext GLuint GLenum (Effect a)

getVertexAttrib :: forall eff a. WebGLContext -> GLuint -> GLenum -> Effect (Maybe a)
getVertexAttrib webgl index pname = runFn3 getVertexAttribImpl webgl index pname >>= toMaybe >>> pure

foreign import getVertexAttribOffsetImpl :: forall eff. Fn3 WebGLContext GLuint GLenum (Effect GLsizeiptr)

getVertexAttribOffset :: forall eff. WebGLContext -> GLuint -> GLenum -> Effect GLsizeiptr
getVertexAttribOffset webgl index pname = runFn3 getVertexAttribOffsetImpl webgl index pname

foreign import hintImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Effect Unit)

hint :: forall eff. WebGLContext -> GLenum -> GLenum -> Effect Unit
hint webgl target mode = runFn3 hintImpl webgl target mode

foreign import isBufferImpl :: forall eff. Fn2 WebGLContext WebGLBuffer (Effect GLboolean)

isBuffer :: forall eff. WebGLContext -> WebGLBuffer -> Effect GLboolean
isBuffer webgl buffer = runFn2 isBufferImpl webgl buffer

foreign import isContextLostImpl :: forall eff. Fn1 WebGLContext (Effect Boolean)

isContextLost :: forall eff. WebGLContext -> Effect Boolean
isContextLost webgl = runFn1 isContextLostImpl webgl

foreign import isEnabledImpl :: forall eff. Fn2 WebGLContext GLenum (Effect GLboolean)

isEnabled :: forall eff. WebGLContext -> GLenum -> Effect GLboolean
isEnabled webgl cap = runFn2 isEnabledImpl webgl cap

foreign import isFramebufferImpl :: forall eff. Fn2 WebGLContext WebGLFramebuffer (Effect GLboolean)

isFramebuffer :: forall eff. WebGLContext -> WebGLFramebuffer -> Effect GLboolean
isFramebuffer webgl framebuffer = runFn2 isFramebufferImpl webgl framebuffer

foreign import isProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Effect GLboolean)

isProgram :: forall eff. WebGLContext -> WebGLProgram -> Effect GLboolean
isProgram webgl program = runFn2 isProgramImpl webgl program

foreign import isRenderbufferImpl :: forall eff. Fn2 WebGLContext WebGLRenderbuffer (Effect GLboolean)

isRenderbuffer :: forall eff. WebGLContext -> WebGLRenderbuffer -> Effect GLboolean
isRenderbuffer webgl renderbuffer = runFn2 isRenderbufferImpl webgl renderbuffer

foreign import isShaderImpl :: forall eff. Fn2 WebGLContext WebGLShader (Effect GLboolean)

isShader :: forall eff. WebGLContext -> WebGLShader -> Effect GLboolean
isShader webgl shader = runFn2 isShaderImpl webgl shader

foreign import isTextureImpl :: forall eff. Fn2 WebGLContext WebGLTexture (Effect GLboolean)

isTexture :: forall eff. WebGLContext -> WebGLTexture -> Effect GLboolean
isTexture webgl texture = runFn2 isTextureImpl webgl texture

foreign import lineWidthImpl :: forall eff. Fn2 WebGLContext GLfloat (Effect Unit)

lineWidth :: forall eff. WebGLContext -> GLfloat -> Effect Unit
lineWidth webgl width = runFn2 lineWidthImpl webgl width

foreign import linkProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Effect Unit)

linkProgram :: forall eff. WebGLContext -> WebGLProgram -> Effect Unit
linkProgram webgl program = runFn2 linkProgramImpl webgl program

foreign import pixelStoreiImpl :: forall eff. Fn3 WebGLContext GLenum GLint (Effect Unit)

pixelStorei :: forall eff. WebGLContext -> GLenum -> GLint -> Effect Unit
pixelStorei webgl pname param = runFn3 pixelStoreiImpl webgl pname param

foreign import polygonOffsetImpl :: forall eff. Fn3 WebGLContext GLfloat GLfloat (Effect Unit)

polygonOffset :: forall eff. WebGLContext -> GLfloat -> GLfloat -> Effect Unit
polygonOffset webgl factor units = runFn3 polygonOffsetImpl webgl factor units

foreign import readPixelsImpl :: forall eff. Fn8 WebGLContext GLint GLint GLsizei GLsizei GLenum GLenum ArrayBufferView (Effect Unit)

readPixels :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Effect Unit
readPixels webgl x y width height format type' pixels = runFn8 readPixelsImpl webgl x y width height format type' pixels

foreign import renderbufferStorageImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLsizei GLsizei (Effect Unit)

renderbufferStorage :: forall eff. WebGLContext -> GLenum -> GLenum -> GLsizei -> GLsizei -> Effect Unit
renderbufferStorage webgl target internalformat width height = runFn5 renderbufferStorageImpl webgl target internalformat width height

foreign import sampleCoverageImpl :: forall eff. Fn3 WebGLContext GLclampf GLboolean (Effect Unit)

sampleCoverage :: forall eff. WebGLContext -> GLclampf -> GLboolean -> Effect Unit
sampleCoverage webgl value invert = runFn3 sampleCoverageImpl webgl value invert

foreign import scissorImpl :: forall eff. Fn5 WebGLContext GLint GLint GLsizei GLsizei (Effect Unit)

scissor :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Effect Unit
scissor webgl x y width height = runFn5 scissorImpl webgl x y width height

foreign import shaderSourceImpl :: forall eff. Fn3 WebGLContext WebGLShader DOMString (Effect Unit)

shaderSource :: forall eff. WebGLContext -> WebGLShader -> DOMString -> Effect Unit
shaderSource webgl shader source = runFn3 shaderSourceImpl webgl shader source

foreign import stencilFuncImpl :: forall eff. Fn4 WebGLContext GLenum GLint GLuint (Effect Unit)

stencilFunc :: forall eff. WebGLContext -> GLenum -> GLint -> GLuint -> Effect Unit
stencilFunc webgl func ref mask = runFn4 stencilFuncImpl webgl func ref mask

foreign import stencilFuncSeparateImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLint GLuint (Effect Unit)

stencilFuncSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLint -> GLuint -> Effect Unit
stencilFuncSeparate webgl face func ref mask = runFn5 stencilFuncSeparateImpl webgl face func ref mask

foreign import stencilMaskImpl :: forall eff. Fn2 WebGLContext GLuint (Effect Unit)

stencilMask :: forall eff. WebGLContext -> GLuint -> Effect Unit
stencilMask webgl mask = runFn2 stencilMaskImpl webgl mask

foreign import stencilMaskSeparateImpl :: forall eff. Fn3 WebGLContext GLenum GLuint (Effect Unit)

stencilMaskSeparate :: forall eff. WebGLContext -> GLenum -> GLuint -> Effect Unit
stencilMaskSeparate webgl face mask = runFn3 stencilMaskSeparateImpl webgl face mask

foreign import stencilOpImpl :: forall eff. Fn4 WebGLContext GLenum GLenum GLenum (Effect Unit)

stencilOp :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> Effect Unit
stencilOp webgl fail zfail zpass = runFn4 stencilOpImpl webgl fail zfail zpass

foreign import stencilOpSeparateImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLenum GLenum (Effect Unit)

stencilOpSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Effect Unit
stencilOpSeparate webgl face fail zfail zpass = runFn5 stencilOpSeparateImpl webgl face fail zfail zpass

foreign import texImage2DImpl :: forall eff. Fn7 WebGLContext GLenum GLint GLenum GLenum GLenum TexImageSource (Effect Unit)

texImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLenum -> GLenum -> TexImageSource -> Effect Unit
texImage2D webgl target level internalformat format type' source = runFn7 texImage2DImpl webgl target level internalformat format type' source

foreign import texImage2D_Impl :: forall eff. Fn10 WebGLContext GLenum GLint GLenum GLsizei GLsizei GLint GLenum GLenum ArrayBufferView (Effect Unit)

texImage2D_ :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> ArrayBufferView -> Effect Unit
texImage2D_ webgl target level internalformat width height border format type' pixels = runFn10 texImage2D_Impl webgl target level internalformat width height border format type' pixels

foreign import texParameterfImpl :: forall eff. Fn4 WebGLContext GLenum GLenum GLfloat (Effect Unit)

texParameterf :: forall eff. WebGLContext -> GLenum -> GLenum -> GLfloat -> Effect Unit
texParameterf webgl target pname param = runFn4 texParameterfImpl webgl target pname param

foreign import texParameteriImpl :: forall eff. Fn4 WebGLContext GLenum GLenum GLint (Effect Unit)

texParameteri :: forall eff. WebGLContext -> GLenum -> GLenum -> GLint -> Effect Unit
texParameteri webgl target pname param = runFn4 texParameteriImpl webgl target pname param

foreign import texSubImage2DImpl :: forall eff. Fn8 WebGLContext GLenum GLint GLint GLint GLenum GLenum TexImageSource (Effect Unit)

texSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLenum -> GLenum -> TexImageSource -> Effect Unit
texSubImage2D webgl target level xoffset yoffset format type' source = runFn8 texSubImage2DImpl webgl target level xoffset yoffset format type' source

foreign import texSubImage2D_Impl :: forall eff. Fn10 WebGLContext GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum ArrayBufferView (Effect Unit)

texSubImage2D_ :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Effect Unit
texSubImage2D_ webgl target level xoffset yoffset width height format type' pixels = runFn10 texSubImage2D_Impl webgl target level xoffset yoffset width height format type' pixels

foreign import uniform1fImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation GLfloat (Effect Unit)

uniform1f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> Effect Unit
uniform1f webgl location x = runFn3 uniform1fImpl webgl location x

foreign import uniform1fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Effect Unit)

uniform1fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Effect Unit
uniform1fv webgl location v = runFn3 uniform1fvImpl webgl location v

foreign import uniform1fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Effect Unit)

uniform1fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Effect Unit
uniform1fv_ webgl location v = runFn3 uniform1fv_Impl webgl location v

foreign import uniform1iImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation GLint (Effect Unit)

uniform1i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> Effect Unit
uniform1i webgl location x = runFn3 uniform1iImpl webgl location x

foreign import uniform1ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Effect Unit)

uniform1iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Effect Unit
uniform1iv webgl location v = runFn3 uniform1ivImpl webgl location v

foreign import uniform1iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Effect Unit)

uniform1iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Effect Unit
uniform1iv_ webgl location v = runFn3 uniform1iv_Impl webgl location v

foreign import uniform2fImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLfloat GLfloat (Effect Unit)

uniform2f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> Effect Unit
uniform2f webgl location x y = runFn4 uniform2fImpl webgl location x y

foreign import uniform2fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Effect Unit)

uniform2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Effect Unit
uniform2fv webgl location v = runFn3 uniform2fvImpl webgl location v

foreign import uniform2fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Effect Unit)

uniform2fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Effect Unit
uniform2fv_ webgl location v = runFn3 uniform2fv_Impl webgl location v

foreign import uniform2iImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLint GLint (Effect Unit)

uniform2i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> Effect Unit
uniform2i webgl location x y = runFn4 uniform2iImpl webgl location x y

foreign import uniform2ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Effect Unit)

uniform2iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Effect Unit
uniform2iv webgl location v = runFn3 uniform2ivImpl webgl location v

foreign import uniform2iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Effect Unit)

uniform2iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Effect Unit
uniform2iv_ webgl location v = runFn3 uniform2iv_Impl webgl location v

foreign import uniform3fImpl :: forall eff. Fn5 WebGLContext WebGLUniformLocation GLfloat GLfloat GLfloat (Effect Unit)

uniform3f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> Effect Unit
uniform3f webgl location x y z = runFn5 uniform3fImpl webgl location x y z

foreign import uniform3fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Effect Unit)

uniform3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Effect Unit
uniform3fv webgl location v = runFn3 uniform3fvImpl webgl location v

foreign import uniform3fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Effect Unit)

uniform3fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Effect Unit
uniform3fv_ webgl location v = runFn3 uniform3fv_Impl webgl location v

foreign import uniform3iImpl :: forall eff. Fn5 WebGLContext WebGLUniformLocation GLint GLint GLint (Effect Unit)

uniform3i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> Effect Unit
uniform3i webgl location x y z = runFn5 uniform3iImpl webgl location x y z

foreign import uniform3ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Effect Unit)

uniform3iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Effect Unit
uniform3iv webgl location v = runFn3 uniform3ivImpl webgl location v

foreign import uniform3iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Effect Unit)

uniform3iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Effect Unit
uniform3iv_ webgl location v = runFn3 uniform3iv_Impl webgl location v

foreign import uniform4fImpl :: forall eff. Fn6 WebGLContext WebGLUniformLocation GLfloat GLfloat GLfloat GLfloat (Effect Unit)

uniform4f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Effect Unit
uniform4f webgl location x y z w = runFn6 uniform4fImpl webgl location x y z w

foreign import uniform4fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Effect Unit)

uniform4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Effect Unit
uniform4fv webgl location v = runFn3 uniform4fvImpl webgl location v

foreign import uniform4fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Effect Unit)

uniform4fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Effect Unit
uniform4fv_ webgl location v = runFn3 uniform4fv_Impl webgl location v

foreign import uniform4iImpl :: forall eff. Fn6 WebGLContext WebGLUniformLocation GLint GLint GLint GLint (Effect Unit)

uniform4i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> GLint -> Effect Unit
uniform4i webgl location x y z w = runFn6 uniform4iImpl webgl location x y z w

foreign import uniform4ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Effect Unit)

uniform4iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Effect Unit
uniform4iv webgl location v = runFn3 uniform4ivImpl webgl location v

foreign import uniform4iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Effect Unit)

uniform4iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Effect Unit
uniform4iv_ webgl location v = runFn3 uniform4iv_Impl webgl location v

foreign import uniformMatrix2fvImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean (Array GLfloat) (Effect Unit)

uniformMatrix2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> (Array GLfloat) -> Effect Unit
uniformMatrix2fv webgl location transpose value = runFn4 uniformMatrix2fvImpl webgl location transpose value

foreign import uniformMatrix2fv_Impl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean Float32Array (Effect Unit)

uniformMatrix2fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Effect Unit
uniformMatrix2fv_ webgl location transpose value = runFn4 uniformMatrix2fv_Impl webgl location transpose value

foreign import uniformMatrix3fvImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean (Array GLfloat) (Effect Unit)

uniformMatrix3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> (Array GLfloat) -> Effect Unit
uniformMatrix3fv webgl location transpose value = runFn4 uniformMatrix3fvImpl webgl location transpose value

foreign import uniformMatrix3fv_Impl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean Float32Array (Effect Unit)

uniformMatrix3fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Effect Unit
uniformMatrix3fv_ webgl location transpose value = runFn4 uniformMatrix3fv_Impl webgl location transpose value

foreign import uniformMatrix4fvImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean (Array GLfloat) (Effect Unit)

uniformMatrix4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> (Array GLfloat) -> Effect Unit
uniformMatrix4fv webgl location transpose value = runFn4 uniformMatrix4fvImpl webgl location transpose value

foreign import uniformMatrix4fv_Impl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean Float32Array (Effect Unit)

uniformMatrix4fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Effect Unit
uniformMatrix4fv_ webgl location transpose value = runFn4 uniformMatrix4fv_Impl webgl location transpose value

foreign import useProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Effect Unit)

useProgram :: forall eff. WebGLContext -> WebGLProgram -> Effect Unit
useProgram webgl program = runFn2 useProgramImpl webgl program

foreign import validateProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Effect Unit)

validateProgram :: forall eff. WebGLContext -> WebGLProgram -> Effect Unit
validateProgram webgl program = runFn2 validateProgramImpl webgl program

foreign import vertexAttrib1fImpl :: forall eff. Fn3 WebGLContext GLuint GLfloat (Effect Unit)

vertexAttrib1f :: forall eff. WebGLContext -> GLuint -> GLfloat -> Effect Unit
vertexAttrib1f webgl indx x = runFn3 vertexAttrib1fImpl webgl indx x

foreign import vertexAttrib1fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Effect Unit)

vertexAttrib1fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Effect Unit
vertexAttrib1fv webgl indx values = runFn3 vertexAttrib1fvImpl webgl indx values

foreign import vertexAttrib1fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Effect Unit)

vertexAttrib1fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Effect Unit
vertexAttrib1fv_ webgl indx values = runFn3 vertexAttrib1fv_Impl webgl indx values

foreign import vertexAttrib2fImpl :: forall eff. Fn4 WebGLContext GLuint GLfloat GLfloat (Effect Unit)

vertexAttrib2f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> Effect Unit
vertexAttrib2f webgl indx x y = runFn4 vertexAttrib2fImpl webgl indx x y

foreign import vertexAttrib2fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Effect Unit)

vertexAttrib2fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Effect Unit
vertexAttrib2fv webgl indx values = runFn3 vertexAttrib2fvImpl webgl indx values

foreign import vertexAttrib2fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Effect Unit)

vertexAttrib2fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Effect Unit
vertexAttrib2fv_ webgl indx values = runFn3 vertexAttrib2fv_Impl webgl indx values

foreign import vertexAttrib3fImpl :: forall eff. Fn5 WebGLContext GLuint GLfloat GLfloat GLfloat (Effect Unit)

vertexAttrib3f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> Effect Unit
vertexAttrib3f webgl indx x y z = runFn5 vertexAttrib3fImpl webgl indx x y z

foreign import vertexAttrib3fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Effect Unit)

vertexAttrib3fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Effect Unit
vertexAttrib3fv webgl indx values = runFn3 vertexAttrib3fvImpl webgl indx values

foreign import vertexAttrib3fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Effect Unit)

vertexAttrib3fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Effect Unit
vertexAttrib3fv_ webgl indx values = runFn3 vertexAttrib3fv_Impl webgl indx values

foreign import vertexAttrib4fImpl :: forall eff. Fn6 WebGLContext GLuint GLfloat GLfloat GLfloat GLfloat (Effect Unit)

vertexAttrib4f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Effect Unit
vertexAttrib4f webgl indx x y z w = runFn6 vertexAttrib4fImpl webgl indx x y z w

foreign import vertexAttrib4fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Effect Unit)

vertexAttrib4fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Effect Unit
vertexAttrib4fv webgl indx values = runFn3 vertexAttrib4fvImpl webgl indx values

foreign import vertexAttrib4fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Effect Unit)

vertexAttrib4fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Effect Unit
vertexAttrib4fv_ webgl indx values = runFn3 vertexAttrib4fv_Impl webgl indx values

foreign import vertexAttribPointerImpl :: forall eff. Fn7 WebGLContext GLuint GLint GLenum GLboolean GLsizei GLintptr (Effect Unit)

vertexAttribPointer :: forall eff. WebGLContext -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> Effect Unit
vertexAttribPointer webgl indx size type' normalized stride offset = runFn7 vertexAttribPointerImpl webgl indx size type' normalized stride offset

foreign import viewportImpl :: forall eff. Fn5 WebGLContext GLint GLint GLsizei GLsizei (Effect Unit)

viewport :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Effect Unit
viewport webgl x y width height = runFn5 viewportImpl webgl x y width height
