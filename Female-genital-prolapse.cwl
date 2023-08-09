cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  prolapse---primary:
    run: prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  uterovaginal-female-genital-prolapse---primary:
    run: uterovaginal-female-genital-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: prolapse---primary/output
  female-genital-prolapse-uteri---primary:
    run: female-genital-prolapse-uteri---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: uterovaginal-female-genital-prolapse---primary/output
  female-genital-prolapse-posterior---primary:
    run: female-genital-prolapse-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-uteri---primary/output
  female-genital-prolapse-anterior---primary:
    run: female-genital-prolapse-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-posterior---primary/output
  other-female-genital-prolapse---primary:
    run: other-female-genital-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-anterior---primary/output
  female-genital-prolapse-repair---primary:
    run: female-genital-prolapse-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-female-genital-prolapse---primary/output
  female-genital-prolapse-colporrhaphy---primary:
    run: female-genital-prolapse-colporrhaphy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-repair---primary/output
  female-genital-prolapse-enterocele---primary:
    run: female-genital-prolapse-enterocele---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-colporrhaphy---primary/output
  female-genital-prolapse-vagina---primary:
    run: female-genital-prolapse-vagina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-enterocele---primary/output
  female-genital-prolapse-reinforcement---primary:
    run: female-genital-prolapse-reinforcement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-vagina---primary/output
  female-genital-prolapse-specified---primary:
    run: female-genital-prolapse-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-reinforcement---primary/output
  female-genital-prolapse-sacrocolpopexy---primary:
    run: female-genital-prolapse-sacrocolpopexy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-specified---primary/output
  female-genital-prolapse-colpoperineorrhaphy---primary:
    run: female-genital-prolapse-colpoperineorrhaphy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-sacrocolpopexy---primary/output
  female-genital-prolapse-removal---primary:
    run: female-genital-prolapse-removal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-colpoperineorrhaphy---primary/output
  female-genital-prolapse-cystocele---primary:
    run: female-genital-prolapse-cystocele---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-removal---primary/output
  female-genital-prolapse-rectocele---primary:
    run: female-genital-prolapse-rectocele---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-cystocele---primary/output
  female-genital-prolapse-first---primary:
    run: female-genital-prolapse-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-rectocele---primary/output
  female-genital-prolapse-second---primary:
    run: female-genital-prolapse-second---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-first---primary/output
  female-genital-prolapse-third---primary:
    run: female-genital-prolapse-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-second---primary/output
  pelvic-female-genital-prolapse---primary:
    run: pelvic-female-genital-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-third---primary/output
  female-genital-prolapse-fundu---primary:
    run: female-genital-prolapse-fundu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: pelvic-female-genital-prolapse---primary/output
  female-genital-prolapse---primary:
    run: female-genital-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-fundu---primary/output
  female-genital-prolapse-procedure---primary:
    run: female-genital-prolapse-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse---primary/output
  female-genital-prolapse---secondary:
    run: female-genital-prolapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse-procedure---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: female-genital-prolapse---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
