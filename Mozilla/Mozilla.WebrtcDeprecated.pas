unit Mozilla.WebrtcDeprecated;

interface

type
  // Deprecated=WebrtcDeprecatedPrefix,Pref=media.peerconnection.enabled,JSImplementation=@mozilla.org/dom/rtcicecandidate;1,Constructor( optional RTCIceCandidateInit candidateInitDict)
  JmozRTCIceCandidate = class external 'mozRTCIceCandidate' (JRTCIceCandidate)
  end;

  // Deprecated=WebrtcDeprecatedPrefix,Pref=media.peerconnection.enabled,JSImplementation=@mozilla.org/dom/peerconnection;1,Constructor( optional RTCConfiguration configuration , optional object ? constraints)
  JmozRTCPeerConnection = class external 'mozRTCPeerConnection' (JRTCPeerConnection)
  end;

  // Deprecated=WebrtcDeprecatedPrefix,Pref=media.peerconnection.enabled,JSImplementation=@mozilla.org/dom/rtcsessiondescription;1,Constructor( optional RTCSessionDescriptionInit descriptionInitDict)
  JmozRTCSessionDescription = class external 'mozRTCSessionDescription' (JRTCSessionDescription)
  end;

implementation

end.
